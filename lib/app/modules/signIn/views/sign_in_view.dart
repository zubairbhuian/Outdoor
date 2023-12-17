import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:outdoor/app/core/utils/int_extensions.dart';

import '../../../core/config/theme/color.dart';
import '../../../core/config/theme/style.dart';
import '../../../core/utils/icons.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/divider_text.dart';
import '../../../widgets/go_to_x.dart';
import '../../../widgets/popup_dialogs.dart';
import '../controllers/sign_in_controller.dart';
import '../widgets/sign_in_form.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Sign in",
            style: kTitleLarge,
          ),
          24.height,
          Center(child: SvgPicture.asset(ImagesPath.userVactor)),
          24.height,
          const Center(
              child: Text(
            "Welcome Back!",
            style: kHeadlineMedium,
          )),
          6.height,
          const Center(
              child: Text(
            "Please login to continue",
            style: kBodyLarge,
          )),
          40.height,
          //form
          const SignInForm(),
          // forget pass
          Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: kTitleSmall.copyWith(color: kPrimaryColor),
              )),
          32.height,
          // Sign up btn
          SizedBox(
            width: double.infinity,
            child: Builder(builder: (context) {
              return GetBuilder<SignInController>(builder: (controller) {
                bool isReady = controller.isReadyToSignin;
                return ElevatedButton(
                  onPressed: isReady
                      ? () {
                          controller.onSignIn();
                        }
                      : null,
                  child: const Text(
                    "Sign in",
                  ),
                );
              });
            }),
          ),
          //hird party login
          40.height,
          const DividerText("OR CONTINUE WITH "),
          24.height,
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                    onPressed: () {
                      PopupDialog.showErrorMessage('This service is not available right now');
                    },
                    style: ElevatedButton.styleFrom(
                      textStyle: kBodyLarge,
                      backgroundColor: kWhite,
                      foregroundColor: kTextColorLight,
                      side: const BorderSide(
                        color: kDisabledTextColor,
                        width: 1,
                      ),
                    ),
                    icon: SvgPicture.asset(IconsPath.google),
                    label: const Text("Google")),
              ),
              16.width,
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    PopupDialog.showErrorMessage('This service is not available right now');
                  },
                  icon: SvgPicture.asset(IconsPath.facebook),
                  label: const Text("Facebook"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kWhite,
                    textStyle: kBodyLarge,
                    foregroundColor: kTextColorLight,
                    side: const BorderSide(
                      color: kDisabledTextColor,
                      width: .7,
                    ),
                  ),
                ),
              ),
            ],
          ),
          40.height,
          // go to sign in
          GOTOX(
              onTap: () {
                Get.offAllNamed(Routes.SIGN_UP);
              },
              text1: "Don’t have any account? ",
              text2: "Register Now"),
          20.height
        ],
      ),
    ));
  }
}
