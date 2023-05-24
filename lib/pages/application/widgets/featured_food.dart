import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outdoor/core/utils/app_colors.dart';
import 'package:outdoor/core/utils/img_path.dart';
import 'package:outdoor/core/widgets/custom_text.dart';
import 'package:outdoor/core/widgets/shadow.dart';

Widget featuredItems() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(
          left: 26.w,
          right: 26.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            largeText(text: 'Featured Restaurants', size: 18.sp),
            SizedBox(width: 5.w),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                regularText(
                    text: 'View All',
                    color: AppColors.primary,
                    fontFamily: "SofiaProRegular"),
                SizedBox(width: 5.w),
                SvgPicture.asset(ImgPath.angleRight)
              ],
            )
          ],
        ),
      ),
      Container(
        height: 276.w,
        padding: EdgeInsets.only(bottom: 13.h),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Center(
                child: Container(
                  width: 226.w,
                  height: 246.w,
                  margin: EdgeInsets.only(
                    left: index == 0 ? 26.w : 15.w,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: [shadow1()]),
                  child: Column(
                    children: [
                      Container(
                        height: 136.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12.r),
                                topRight: Radius.circular(12.r)),
                            image: const DecorationImage(
                                image: AssetImage(ImgPath.demoImg),
                                fit: BoxFit.cover)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 11.w, vertical: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    left: 8.19.w,
                                    right: 7.w,
                                    top: 9.w,
                                    bottom: 7.37.w),
                                decoration: BoxDecoration(
                                    color: AppColors.bodyColor,
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
                      Padding(
                        padding: EdgeInsets.only(
                            top: 12.w, left: 13.w, bottom: 14.w, right: 12.w),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                largeText(
                                    text: 'McDonald’s',
                                    size: 15.sp,
                                    color: AppColors.blackColor),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Image.asset(
                                  ImgPath.tickMark,
                                  width: 10.w,
                                  height: 10.w,
                                )
                              ],
                            ),
                            SizedBox(height: 6.w),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      ImgPath.bikeRide,
                                      width: 10.w,
                                      height: 10.w,
                                    ),
                                    SizedBox(
                                      width: 6.22.w,
                                    ),
                                    regularText(
                                        text: 'Free delivery', size: 12.sp),
                                  ],
                                ),
                                SizedBox(width: 35.w),
                                Row(
                                  children: [
                                    Image.asset(
                                      ImgPath.clock,
                                      width: 10.w,
                                      height: 10.w,
                                    ),
                                    SizedBox(
                                      width: 6.22.w,
                                    ),
                                    regularText(
                                        text: '10-15 mins', size: 12.sp),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.91.w,
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 8.w),
                                  padding: EdgeInsets.only(
                                      top: 6.w,
                                      right: 6.w,
                                      bottom: 4.w,
                                      left: 4.w),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF6F6F6),
                                      borderRadius: BorderRadius.circular(5.r)),
                                  child: regularText(
                                      text: "Burger",
                                      size: 12.sp,
                                      color: const Color(0xff8A8E9B),
                                      fontFamily: 'SofiaProMedium'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 8.w),
                                  padding: EdgeInsets.only(
                                      top: 6.w,
                                      right: 6.w,
                                      bottom: 4.w,
                                      left: 4.w),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF6F6F6),
                                      borderRadius: BorderRadius.circular(5.r)),
                                  child: regularText(
                                      text: "Burger",
                                      size: 12.sp,
                                      color: const Color(0xff8A8E9B),
                                      fontFamily: 'SofiaProMedium'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 8.w),
                                  padding: EdgeInsets.only(
                                      top: 6.w,
                                      right: 6.w,
                                      bottom: 4.w,
                                      left: 4.w),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF6F6F6),
                                      borderRadius: BorderRadius.circular(5.r)),
                                  child: regularText(
                                      text: "Burger",
                                      size: 12.sp,
                                      color: const Color(0xff8A8E9B),
                                      fontFamily: 'SofiaProMedium'),
                                ),
                              ],
                            )
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
