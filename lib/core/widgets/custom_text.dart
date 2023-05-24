import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outdoor/core/utils/app_colors.dart';

Text regularText(
    {required String text,
    Color? color,
    double? size,
    TextAlign? textAlign,
    String? fontFamily}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: TextStyle(
        fontFamily: fontFamily ?? "Helveticaneue",
        color: color ?? AppColors.textColor,
        fontSize: size ?? 12.sp),
  );
}

Text largeText(
    {required String text, Color? color, double? size, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: TextStyle(
        fontFamily: "SofiaProSemiBold",
        color: color ?? AppColors.titleColor,
        fontSize: size ?? 12.sp),
  );
}

Text xLargeText(
    {required String text, Color? color, double? size, TextAlign? textAlign}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: TextStyle(
        fontFamily: "SofiaProBold",
        color: color ?? AppColors.titleColor,
        fontSize: size ?? 30.sp),
  );
}
