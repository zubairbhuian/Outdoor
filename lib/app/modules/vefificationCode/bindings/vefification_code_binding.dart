import 'package:get/get.dart';

import '../controllers/vefification_code_controller.dart';

class VefificationCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VefificationCodeController>(
      () => VefificationCodeController(),
    );
  }
}
