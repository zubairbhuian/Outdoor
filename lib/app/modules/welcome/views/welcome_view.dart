import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:outdoor/app/core/config/fonts.dart';
import 'package:outdoor/app/core/config/theme/color.dart';
import 'package:outdoor/app/core/config/theme/style.dart';
import 'package:outdoor/app/core/utils/int_extensions.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // hide statusbar 
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 27),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/welcome_bg.png"))),
          child: Column(
            children: [
              // top side
              20.height,
              Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  width: 50,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      textStyle: kBodyMedium,
                      backgroundColor: kWhite,
                      foregroundColor: kPrimaryColor,
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text("Skip"),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              RichText(
                  text: const TextSpan(
                      text: "Welcome to ",
                      style: kHeadlineLarge,
                      children: [
                    TextSpan(
                        text: 'FoodHub', style: TextStyle(color: kPrimaryColor))
                  ])),
              const SizedBox(
                height: 19,
              ),
              Text(
                "Your favourite foods delivered fast at your door.",
                style: kTitleMedium.copyWith(
                    fontFamily: Fonts.primary,
                    color: const Color(0xff30384F),
                    fontWeight: FontWeight.w300),
              )
              // bottom side
            ],
          ),
        ));
  }
}
