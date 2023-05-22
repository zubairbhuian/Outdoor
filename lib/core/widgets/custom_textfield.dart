import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextFormField textFormField({
  TextEditingController? controller,
  bool? obscureText,
  bool? readOnly,
  Widget? suffixIcon,
  Widget? prefixIcon,
  String? hintText,
  Widget? label,
  VoidCallback? onTap,
  AutovalidateMode? autovalidateMode,
  TextInputType? keyboardType,
  String? Function(String?)? validator,
  Function(String)? onChange,
  EdgeInsetsGeometry? padding,
}) {
  return TextFormField(
    cursorColor: Color.fromARGB(0, 19, 19, 19),
    cursorWidth: 2.w,
    controller: controller,
    validator: validator,
    obscureText: obscureText ?? false,
    readOnly: readOnly ?? false,
    autovalidateMode: autovalidateMode,
    onTap: onTap,
    keyboardType: keyboardType,
    decoration: InputDecoration(
        contentPadding: padding,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            borderSide: const BorderSide(color: Color(0xffEFEFEF))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            borderSide: const BorderSide(color: Color(0xffEFEFEF))),
        hintText: hintText,
        label: label,
        hintStyle: TextStyle(
            color: const Color(0xff9AA0B4),
            fontSize: 14.sp,
            fontFamily: "SofiaProRegular")),
  );
}
