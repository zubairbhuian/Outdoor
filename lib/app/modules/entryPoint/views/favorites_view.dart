import 'package:flutter/material.dart';

import 'package:get/get.dart';

class FavoritesView extends GetView {
  const FavoritesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'FavoritesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
