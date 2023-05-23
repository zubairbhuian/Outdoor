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
                    padding:
                        EdgeInsets.symmetric(horizontal: 11.w, vertical: 10.w),
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
                          largeText(text: 'McDonald’s', size: 15.sp),
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
                              regularText(text: 'Free delivery', size: 12.sp),
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
                              regularText(text: '10-15 mins', size: 12.sp),
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
                                top: 6.w, right: 6.w, bottom: 4.w, left: 4.w),
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
                                top: 6.w, right: 6.w, bottom: 4.w, left: 4.w),
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
                                top: 6.w, right: 6.w, bottom: 4.w, left: 4.w),
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
        ),
        // Popular items
      ]),
      // Bottom Navigation
    );
  }
}
