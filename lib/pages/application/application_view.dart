import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outdoor/core/utils/app_colors.dart';
import 'package:outdoor/core/widgets/custom_text.dart';

import 'widgets/appbar.dart';
import 'widgets/featured_food.dart';
import 'widgets/food_items.dart';
import 'widgets/populer_food.dart';
import 'widgets/search_bar.dart';

class ApplicationView extends StatelessWidget {
  const ApplicationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      body: ListView(children: [
        // Appbars
        appBar(),
        // Title
        Padding(
          padding: EdgeInsets.only(left: 26.w, right: 26.w, bottom: 18.h),
          child: xLargeText(
            text: "What would you like \n to order",
          ),
        ),
        // Search
        searchBar(),
        // Food Catagori
        catagoriTab(),
        // Featured items
        featuredItems(),
        // Popular items
        popularItems(),
      ]),
      // Bottom Navigation
    );
  }
}
