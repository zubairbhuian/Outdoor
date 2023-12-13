// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:outdoor/app/core/services/base/preferences.dart';
// import 'package:outdoor/app/routes/app_pages.dart';

// class RouteWlcomMiddleware extends GetMiddleware {
//   @override
//   RouteSettings? redirect(String? route) {
//     if (Preferences.isUserSignin) {
//       // user is Signin
//       // return should be application screen
//       // kLogger.e("user has token");
//       return const RouteSettings(name: Routes.APPLICATION);
//     } else {
//       // user token is empty
//       // return should be login screen
//       // kLogger.e("user token is empty");
//       return null;
//     }
//   }
// }
