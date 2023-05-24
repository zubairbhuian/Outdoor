import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outdoor/core/utils/app_colors.dart';
import 'package:outdoor/core/utils/img_path.dart';
import 'package:outdoor/core/widgets/custom_text.dart';
import 'package:outdoor/core/widgets/shadow.dart';

Widget popularItems() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(
          left: 26.w,
          right: 26.w,
        ),
        child: largeText(text: 'Popular Items', size: 18.sp),
      ),
      Container(
        height: 240.h,
        margin: const EdgeInsets.only(bottom: 30),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Center(
                child: Container(
                  width: 154.43.w,
                  height: 226.h,
                  margin: EdgeInsets.only(
                    left: index == 0 ? 26.w : 15.w,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [shadow1()],
                  ),
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 147.36.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                image: const DecorationImage(
                                    image: AssetImage(ImgPath.demoImg),
                                    fit: BoxFit.cover)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11.w, vertical: 10.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 7.w,
                                        right: 3.w,
                                        top: 4.h,
                                        bottom: .3.h),
                                    decoration: BoxDecoration(
                                        color: AppColors.bodyColor,
                                        borderRadius:
                                            BorderRadius.circular(50.r)),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          ImgPath.usDollar,
                                          width: 10.w,
                                          height: 10.h,
                                          color: AppColors.primary,
                                        ),
                                        largeText(
                                            text: "5.50 ",
                                            size: 18.sp,
                                            color: AppColors.blackColor),
                                      ],
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: AppColors.primary,
                                    radius: 14.r,
                                    child: SvgPicture.asset(
                                      ImgPath.love,
                                      width: 15.w,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -12.2.w,
                            left: 17.w,
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 8.19.w,
                                  right: 7.w,
                                  top: 9.h,
                                  bottom: 7.37.h),
                              decoration: BoxDecoration(
                                  color: AppColors.bodyColor,
                                  boxShadow: [
                                    shadow2(),
                                  ],
                                  borderRadius: BorderRadius.circular(50.r)),
                              child: Row(
                                children: [
                                  largeText(text: "4.5", size: 11.69.sp),
                                  SizedBox(width: 4.21.w),
                                  SvgPicture.asset(ImgPath.star),
                                  SizedBox(width: 2.17.w),
                                  regularText(
                                      text: "(25+)",
                                      fontFamily: 'SofiaProMedium',
                                      size: 8.19.sp)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 17.6.h, left: 10.w, bottom: 16.h, right: 12.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            largeText(
                                text: 'Salmon Salad',
                                size: 14.sp,
                                color: AppColors.blackColor),
                            SizedBox(height: 6.h),
                            regularText(
                                text: 'Baked salmon fish',
                                fontFamily: 'SofiaProLight',
                                size: 12.sp,
                                color: const Color(0xff9796A1))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    ],
  );
}
