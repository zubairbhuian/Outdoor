import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/utils/icons.dart';
import '../../../widgets/custom_textfield.dart';
import '../controllers/sign_up_controller.dart';


class SignUpForm extends GetView<SignUpController> {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.formKey,
        child: Column(
          children: [
            CustomTextField(
              controller: controller.nameController,
              prefixIcon: SizedBox(
                width: 22,
                child: Center(
                  child: SvgPicture.asset(
                    IconsPath.user,
                    width: 20,
                  ),
                ),
              ),
              label: const Text("Your Full name"),
              onChange: (value) {
                controller.onReadyToSignUp();
              },
            ),
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
                controller.onReadyToSignUp();
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
                controller.onReadyToSignUp();
              },
            ),
            CustomTextField(
              controller: controller.confirmPasswordController,
              obscureText: true,
              prefixIcon: SizedBox(
                width: 22,
                child: Center(
                  child: SvgPicture.asset(
                    IconsPath.lock,
                    width: 22,
                  ),
                ),
              ),
              label: const Text("Confirm Password"),
              onChange: (value) {
                controller.onReadyToSignUp();
              },
            ),
          ],
        ));
  }
}
