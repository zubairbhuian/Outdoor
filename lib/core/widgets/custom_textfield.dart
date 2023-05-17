import 'package:flutter/material.dart';

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
    controller: controller,
    validator: validator,
    obscureText: obscureText ?? false,
    readOnly: readOnly ?? false,
    autovalidateMode: autovalidateMode,
    onTap: onTap,
    keyboardType: keyboardType,
    decoration: InputDecoration(
        contentPadding:
            padding ?? const EdgeInsets.only(bottom: 15.5, top: 15.5),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(80)),
            borderSide: BorderSide(color: Colors.redAccent)),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(80)),
            borderSide: BorderSide(color: Colors.redAccent)),
        hintText: hintText,
        label: label,
        hintStyle: const TextStyle(color: Colors.redAccent, fontSize: 14)),
  );
}
