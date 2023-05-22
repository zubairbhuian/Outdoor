import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outdoor/core/utils/app_colors.dart';
import 'package:outdoor/core/utils/img_path.dart';
import 'package:outdoor/core/widgets/custom_text.dart';
import 'package:outdoor/core/widgets/custom_textfield.dart';
import 'package:outdoor/core/widgets/shadow.dart';

class ApplicationView extends StatelessWidget {
  const ApplicationView({super.key});

  @override
  Widget build(BuildContext context) {
    // appBar
    var appBar = Padding(
      padding: EdgeInsets.only(left: 26.w, right: 26.w, bottom: 32.w, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 38.w,
              height: 38.w,
              padding: EdgeInsets.symmetric(vertical: 15.w),
              decoration: BoxDecoration(
                  color: AppColors.bodyColor,
                  boxShadow: [shadow1()],
                  borderRadius: BorderRadius.circular(12.r)),
              child: SvgPicture.asset(
                ImgPath.bars,
              )),
          Column(
            children: [
              Row(
                children: [
                  largeText(
                      text: "Deliver to",
                      color: Color(0xff8C9099),
                      size: 14.sp),
                  SizedBox(
                    width: 5.w,
                  ),
                  SvgPicture.asset(
                    ImgPath.angleDown,
                    width: 10.w,
                  )
                ],
              ),
              largeText(
                  text: "4102  Pretty View Lane ",
                  color: AppColors.primary,
                  size: 15.sp)
            ],
          ),
          Container(
            width: 38.w,
            height: 38.w,
            decoration: BoxDecoration(
                color: AppColors.secondary,
                boxShadow: [shadow1()],
                borderRadius: BorderRadius.circular(12.r)),
            child: Icon(Icons.person),
          ),
        ],
      ),
    );

    var searchBar = Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Row(
          children: [
            Flexible(
              child: Container(
                height: 48.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [shadow1()]),
                child: textFormField(
                    hintText: 'Find for food or restaurant...',
                    prefixIcon: SizedBox(
                      width: 14.5.w,
                      child: Center(
                        child: SvgPicture.asset(
                          ImgPath.search,
                          width: 14.5.w,
                        ),
                      ),
                    )),
              ),
            ),
            SizedBox(width: 18.w),
            Container(
                width: 51.w,
                height: 48.w,
                padding: EdgeInsets.symmetric(vertical: 15.w),
                decoration: BoxDecoration(
                    color: AppColors.bodyColor,
                    boxShadow: [shadow1()],
                    borderRadius: BorderRadius.circular(12.r)),
                child: SvgPicture.asset(
                  ImgPath.range,
                )),
          ],
        ));

    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      body: ListView(children: [
        // Appbars
        appBar,
        // Title
        Padding(
          padding: EdgeInsets.only(left: 26.w, right: 26.w, bottom: 18.h),
          child: xLargeText(
            text: "What would you like \n to order",
          ),
        ),
        // Search
        searchBar,
        // Food Catagori
        Center(
          child: Container(
            width: 58.w,
            height: 98.w,
            padding: EdgeInsets.all(5.w),
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(50.r),
                boxShadow: [shadow1()]),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 25.r,
                  backgroundColor: AppColors.bodyColor,
                  child: Image.asset(
                    ImgPath.burger,
                    width: 40,
                  ),
                ),
                SizedBox(
                  height: 11.56.w,
                ),
                regularText(
                    text: 'Burger',
                    size: 11.sp,
                    fontFamily: 'SofiaProMedium',
                    color: AppColors.bodyColor)
              ],
            ),
          ),
        ),
        // Featured items
        Center(
          child: Container(
            width: 226.w,
            height: 229.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColors.primary,
                boxShadow: [shadow1()]),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 12.w, left: 13.w, bottom: 14.w, right: 12.w),
                  child: Column(children: [
                    Row(children: [
largeText(text: 'McDonald’s')

                    ],)
                    
                  ],),
                )
              ],
            ),
          ),
        ),
        // Popular items
      ]),
      // Bottom Navigation
    );
  }
}
