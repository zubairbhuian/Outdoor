import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:outdoor/app/core/config/theme/color.dart';
import 'package:outdoor/app/core/config/theme/style.dart';
import 'package:shimmer/shimmer.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Shimmer.fromColors(
                baseColor: Colors.black12,
                highlightColor: Colors.black26,
            child: Column(
              children: List.generate(12, (index) => ListTile(
                leading: const CircleAvatar(),
                title: Container(
                  color: Colors.white,
                  width: 50,
                  height: 20,
                ),
                subtitle:  Text('Subtitle',style: kBodyLarge,),
              )),
            ),
          ),
        ),
      ),
      // body: Center(
      //   child: Shimmer.fromColors(
      //     baseColor: Colors.black12,
      //     highlightColor: Colors.black54,
      //     child: const Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text("This is demo text"),
      //         Icon(Icons.arrow_back)
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
