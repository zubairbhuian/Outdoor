import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outdoor/pages/application/application_view.dart';
import 'package:outdoor/pages/welcome/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Out Door',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 11, 11, 11)),
            useMaterial3: true,
          ),
          home: const ApplicationView(),
        );
      },
    );
  }
}
