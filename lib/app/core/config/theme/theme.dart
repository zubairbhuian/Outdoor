import 'package:flutter/material.dart';
import 'package:outdoor/app/core/config/theme/buttons.dart';
import 'package:outdoor/app/core/config/theme/color.dart';
import 'package:outdoor/app/core/config/fonts.dart';
import 'package:outdoor/app/core/config/theme/text_theme.dart';

ThemeData theme = ThemeData(
  scaffoldBackgroundColor: const Color(0xffF7F9FA),
  fontFamily: Fonts.primary,
  primarySwatch: Colors.blue,
  splashColor: kPrimaryColor.withOpacity(.1),
  appBarTheme: const AppBarTheme(color: Color(0xff333333)),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: kWhite,
  ),
  textTheme: kTextTheme,
  elevatedButtonTheme:Buttons.elevatedButtonTheme,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
      .copyWith(background: const Color(0xffFFFFFF)),
);
