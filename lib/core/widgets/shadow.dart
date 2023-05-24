import 'package:flutter/material.dart';

BoxShadow shadow1() {
  return BoxShadow(
      blurRadius: 10,
      offset: Offset.zero,
      blurStyle: BlurStyle.outer,
      color: Color.fromARGB(94, 112, 112, 112).withOpacity(.2));
}

BoxShadow shadow2() {
  return BoxShadow(
      blurRadius: 20,
      offset: Offset.zero,
      blurStyle: BlurStyle.outer,
      color: Color.fromARGB(141, 227, 7, 7).withOpacity(.6));
}
