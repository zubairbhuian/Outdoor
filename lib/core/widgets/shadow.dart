import 'package:flutter/material.dart';

BoxShadow shadow1() {
  return BoxShadow(
      blurRadius: 10,
      offset: Offset.zero,
      blurStyle: BlurStyle.outer,
      color: Color.fromARGB(94, 112, 112, 112).withOpacity(.2));
}
