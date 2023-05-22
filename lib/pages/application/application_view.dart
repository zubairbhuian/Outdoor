import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outdoor/core/utils/app_colors.dart';
import 'package:outdoor/core/utils/img_path.dart';
import 'package:outdoor/core/widgets/custom_text.dart';
import 'package:outdoor/core/widgets/shadow.dart';

class ApplicationView extends StatelessWidget {
  const ApplicationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      body: ListView(children: [
        // Appbars
        Padding(
          padding:
              EdgeInsets.only(left: 26.w, right: 26.w, bottom: 32.w, top: 10),
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
        )
      ]),
    );
  }
}
