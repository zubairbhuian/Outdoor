import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/utils/icons.dart';
import '../../../widgets/custom_textfield.dart';
import '../controllers/sign_in_controller.dart';

class SignInForm extends GetView<SignInController> {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.formKey,
        child: Column(
          children: [
            CustomTextField(
              controller: controller.mailController,
              prefixIcon: SizedBox(
                width: 22,
                child: Center(
                  child: SvgPicture.asset(
                    IconsPath.email,
                    width: 20,
                  ),
                ),
              ),
              label: const Text("Your Email"),
              onChange: (value) {
                controller.onReadyToSignin();
              },
            ),
            CustomTextField(
              controller: controller.passwordController,
              obscureText: true,
              prefixIcon: SizedBox(
                width: 22,
                child: Center(
                  child: SvgPicture.asset(
                    IconsPath.lock,
                    width: 20,
                  ),
                ),
              ),
              label: const Text("Password"),
                onChange: (value) {
                controller.onReadyToSignin();
              }
            ),
          ],
        ));
  }
}
