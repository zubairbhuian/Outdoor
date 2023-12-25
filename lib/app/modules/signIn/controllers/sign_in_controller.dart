import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart' hide FormData, MultipartFile;

import '../../../core/services/base/preferences.dart';
import '../../../core/services/controller/base_controller.dart';
import '../../../core/utils/logger.dart';
import '../../../data/models/base_model.dart';
import '../../../data/urls/urls.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/popup_dialogs.dart';


class SignInController extends GetxController {
  static SignInController get to => Get.find();

  bool isReadyToSignin = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  onSignIn() async {
    final FormData formData = FormData.fromMap({
      "email": mailController.text.trim(),
      "password": passwordController.text.trim(),
    });

    try {
      PopupDialog.showLoadingDialog();
      BaseModel res = await BaseController.to.apiService
          .makePostRequestWithFormData(Urls.login, formData);
      PopupDialog.closeLoadingDialog();
      kLogger.e(res.data);
      if (res.statusCode == 200 || res.statusCode == 201) {
        Preferences.isUserSignin = true;
        Get.offAllNamed(Routes.ENTRY_POINT);
        PopupDialog.closeLoadingDialog();
        Future.delayed(const Duration(seconds: 2), () {
          PopupDialog.congratulationsDialog();
        });
      } else if (res.statusCode == 404) {
        PopupDialog.showErrorMessage(res.data["message"][0]);
      } else {
        PopupDialog.showErrorMessage("something went wrong please try again");
      }
    } on DioException catch (e) {
      PopupDialog.closeLoadingDialog();
      kLogger.e(e);
    }
  }

  onReadyToSignin() {
    if (mailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      isReadyToSignin = true;
      update();
    } else {
      isReadyToSignin = false;
      update();
    }
  }

}
