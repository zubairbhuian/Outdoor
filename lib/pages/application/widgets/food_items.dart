import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outdoor/core/utils/app_colors.dart';
import 'package:outdoor/core/utils/img_path.dart';
import 'package:outdoor/core/widgets/custom_text.dart';
import 'package:outdoor/core/widgets/shadow.dart';

Widget catagoriTab() => SizedBox(
      height: 158.w,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Center(
            child: Container(
              width: 58.w,
              height: 98.w,
              margin: EdgeInsets.only(
                left: index == 0 ? 26.w : 14.64.w,
              ),
              padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                  color: index == 0
                      ? AppColors.primary
                      : Color.fromARGB(255, 255, 255, 255),
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
                      color: index == 0
                          ? AppColors.bodyColor
                          : AppColors.titleColor)
                ],
              ),
            ),
          );
        },
      ),
    );
