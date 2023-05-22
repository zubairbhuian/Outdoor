import 'package:flutter/material.dart';

BoxShadow shadow1() {
  return BoxShadow(
      blurRadius: 15,
      offset: Offset.zero,
      blurStyle: BlurStyle.outer,
      color: Color.fromARGB(255, 0, 0, 0).withOpacity(.2));
}
