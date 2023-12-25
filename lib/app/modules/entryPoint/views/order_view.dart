import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OrderView extends GetView {
  const OrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'OrderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
