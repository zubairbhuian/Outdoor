import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Text regularText({
  required String text,
  Color? color,
  double? size,
  FontWeight? fontWeight,
  TextAlign? textAlign

}) {
  return Text(
    text,
    textAlign:textAlign ?? TextAlign.start,
    style:  TextStyle(
        fontFamily: "Helveticaneue",
        color:color ?? Colors.red,
        fontSize:size ?? 12.sp,
        fontWeight:fontWeight ?? FontWeight.w400),
  );
}

Text largeText({
  required String text,
  Color? color,
  double? size,
  FontWeight? fontWeight,
  TextAlign? textAlign

}) {
  return Text(
    text,
    textAlign:textAlign ?? TextAlign.start,
    style:  TextStyle(
        fontFamily: "SofiaProSemiBold",
        color:color ?? Colors.red,
        fontSize:size ?? 12.sp,
        fontWeight:fontWeight ?? FontWeight.w400),
  );
}

Text xLargeText({
  required String text,
  Color? color,
  double? size,
  FontWeight? fontWeight,
  TextAlign? textAlign

}) {
  return Text(
    text,
    textAlign:textAlign ?? TextAlign.start,
    style:  TextStyle(
        fontFamily: "SofiaProBold",
        color:color ?? Colors.red,
        fontSize:size ?? 12.sp,
        fontWeight:fontWeight ?? FontWeight.w400),
  );
}
