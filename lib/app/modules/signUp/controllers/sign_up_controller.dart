import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide FormData, MultipartFile;

import '../../../core/services/base/preferences.dart';
import '../../../core/services/controller/base_controller.dart';
import '../../../core/utils/logger.dart';
import '../../../data/models/base_model.dart';
import '../../../data/urls/urls.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/popup_dialogs.dart';

class SignUpController extends GetxController {
  static SignUpController get to => Get.find();

  bool isReadyToSignUp = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  String otp = '';

  onSignUp() async {
    // form data
    final FormData formData = FormData.fromMap({
      "name": nameController.text.trim(),
      "email": mailController.text.trim(),
      "password": passwordController.text.trim(),
      "password_confirmation": confirmPasswordController.text.trim(),
    });
    try {
      // make request
      PopupDialog.showLoadingDialog();
      BaseModel res = await BaseController.to.apiService
          .makePostRequestWithFormData(Urls.regester, formData);
      if (res.statusCode == 200 || res.statusCode == 201) {
        otp = res.data["otp"].toString();
        //  request for OTP verify
        final FormData formData2 = FormData.fromMap({
          "name": nameController.text.trim(),
          "email": mailController.text.trim(),
          "password": passwordController.text.trim(),
          "temp_otp": otp,
          "otp_code": otp,
        });

        try {
          BaseModel res2 = await BaseController.to.apiService
              .makePostRequestWithFormData(Urls.verifyOTP, formData2);
          if (res2.statusCode == 200 || res2.statusCode == 201) {
            Preferences.isUserSignin = true;
            Get.offAllNamed(Routes.APPLICATION);
            PopupDialog.closeLoadingDialog();
            Future.delayed(const Duration(seconds: 2), () {
              PopupDialog.congratulationsDialog();
            });
          }
          PopupDialog.closeLoadingDialog();
        } on DioException catch (e) {
          PopupDialog.closeLoadingDialog();
          kLogger.e(e);
        }
        // show err msg
      } else if (res.statusCode == 422) {
        if (res.data.containsKey("errors") &&
            res.data["errors"].containsKey("email")) {
          PopupDialog.closeLoadingDialog();
          PopupDialog.showErrorMessage(res.data["errors"]["email"][0]);
        } else if (res.data.containsKey("errors") &&
            res.data["errors"].containsKey("password")) {
          PopupDialog.showErrorMessage(res.data["errors"]["password"][0]);
        } else {
          PopupDialog.showErrorMessage("something went wrong please try again");
        }
        PopupDialog.closeLoadingDialog();
      }
      PopupDialog.closeLoadingDialog();
    } on DioException catch (e) {
      kLogger.e(e);
      PopupDialog.closeLoadingDialog();
    }
  }

  onReadyToSignUp() {
    if (nameController.text.isNotEmpty &&
        mailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty) {
      isReadyToSignUp = true;
      update();
    } else {
      isReadyToSignUp = false;
      update();
    }
  }
}
