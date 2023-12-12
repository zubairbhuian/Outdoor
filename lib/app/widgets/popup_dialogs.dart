import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:outdoor/app/core/services/controller/base_controller.dart';
import 'package:outdoor/app/core/utils/int_extensions.dart';
import 'package:outdoor/app/widgets/custom_btn.dart';

import '../core/config/theme/color.dart';
import '../core/config/theme/style.dart';

class PopupDialog {
  // SuccessDialog
  static void showSuccessDialog(String message) {
    var snackBar = SnackBar(
      dismissDirection: DismissDirection.up,
      behavior: SnackBarBehavior.floating,
      backgroundColor: kSuccessColor,
      content: Text(message),
    );
    ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
  }

  // error messase
  static void showErrorMessage(String message) {
    var snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      backgroundColor: kDangerColor,
      content: Text(message),
    );
    ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
  }
  // Loading Dialog

  static showLoadingDialog() {
    return showDialog<void>(
      // Context
      context: Get.context!,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Column(
          // for horizontal minHeight
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // for ertical minWidth
            Center(
              child: SizedBox(
                // dialog width
                width: 80.w,
                height: 80.w,
                child: Material(
                  elevation: 2,
                  // dialog color
                  shadowColor: Colors.black12,
                  // backgraund color
                  color: kWhite,
                  // border radius
                  borderRadius: BorderRadius.circular(8.r),
                  // main body
                  child: SpinKitFadingCircle(
                    color: kPrimaryColor, // You can customize the color
                    size: 43.sp, // You can customize the size
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // close dialog
  static void closeLoadingDialog() {
    Get.back();
  }

  static logOutDialog() {
    return showDialog<void>(
      // Context
      context: Get.context!,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Column(
          // for horizontal minHeight
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // for ertical minWidth
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    elevation: 2,
                    // dialog color
                    shadowColor: Colors.black12,
                    // backgraund color
                    color: kWhite,
                    // border radius
                    borderRadius: BorderRadius.circular(12.r),
                    // main body
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.sp, vertical: 26.sp),
                      child: Column(
                        children: [
                          // icon
                          SvgPicture.asset(
                            'assets/icons/log_out.svg',
                            width: 124.w,
                            height: 124.w,
                          ),
                          24.height,
                          // title
                          Text(
                            "Are you sure you want to logout?",
                            style: kTitleLarge,
                            textAlign: TextAlign.center,
                          ),
                          24.height,
                          // btns
                          Row(
                            children: [
                              Expanded(
                                child: PrimaryBtn(
                                  color: kRed,
                                  child: const Text("Yes"),
                                  onPressed: () {
                                    BaseController.to.logout();
                                  },
                                ),
                              ),
                              16.width,
                              Expanded(
                                child: PrimaryBtn(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: const Text("No"),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  static congratulationsDialog() {
    return showDialog<void>(
      // Context
      context: Get.context!,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Column(
          // for horizontal minHeight
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // for ertical minWidth
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    elevation: 2,
                    // dialog color
                    shadowColor: Colors.black12,
                    // backgraund color
                    color: kWhite,
                    // border radius
                    borderRadius: BorderRadius.circular(12.r),
                    // main body
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 32.sp, vertical: 32.sp),
                      child: Column(
                        children: [
                          // icon
                          Image.asset(
                            'assets/gif/Congratulations.gif',
                            width: 128.w,
                            height: 128.w,
                          ),
                          // title
                          Text(
                            "Congratulations!",
                            style:
                                kHeadlineMedium.copyWith(color: kPrimaryColor),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Your new account has been created successfully.",
                            textAlign: TextAlign.center,
                          ),
                          33.height,
                          // btns
                          SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: const Text("Continue")))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
