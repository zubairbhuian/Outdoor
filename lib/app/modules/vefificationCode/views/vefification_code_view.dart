import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vefification_code_controller.dart';

class VefificationCodeView extends GetView<VefificationCodeController> {
  const VefificationCodeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VefificationCodeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VefificationCodeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
