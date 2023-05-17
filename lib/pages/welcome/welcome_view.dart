import 'package:flutter/material.dart';
import 'package:outdoor/core/widgets/custom_text.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var demoKey = GlobalKey();
    return Scaffold(
      key: demoKey,
      appBar: AppBar(
        title: const Text("This is Demo app"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/logo.png"),
            xLargeText(text: 'This is demo text'),
          ],
        ),
      ),
    );
  }
}
