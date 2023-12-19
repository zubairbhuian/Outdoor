import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:outdoor/app/widgets/appbar.dart';

import '../controllers/application_controller.dart';

class ApplicationView extends GetView<ApplicationController> {
  const ApplicationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        // backgroundColor: Colors.amber,
        title: Text('ApplicationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ApplicationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
