// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:outdoor/app/modules/signIn/bindings/sign_in_binding.dart';
import 'package:outdoor/app/modules/signIn/views/sign_in_view.dart';

import '../modules/application/bindings/application_binding.dart';
import '../modules/application/views/application_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/signUp/bindings/sign_up_binding.dart';
import '../modules/signUp/views/sign_up_view.dart';
import '../modules/vefificationCode/bindings/vefification_code_binding.dart';
import '../modules/vefificationCode/views/vefification_code_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.VEFIFICATION_CODE,
      page: () => const VefificationCodeView(),
      binding: VefificationCodeBinding(),
    ),
    GetPage(
      name: _Paths.APPLICATION,
      page: () => const ApplicationView(),
      binding: ApplicationBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
