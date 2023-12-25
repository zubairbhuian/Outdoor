import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:outdoor/app/core/config/theme/color.dart';

class HomeView extends GetView {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child:Column(
            children: List.generate(100, (index) =>  Container(
              color: kRed,
              child: const Center(
              child: Text(
                'HomeView is working',
                style: TextStyle(fontSize: 20),
              ),
                        ),
            )),
          ),
        ),
      ),
    );
  }
}
