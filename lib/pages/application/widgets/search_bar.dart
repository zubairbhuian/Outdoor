
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outdoor/core/utils/app_colors.dart';
import 'package:outdoor/core/utils/img_path.dart';
import 'package:outdoor/core/widgets/custom_textfield.dart';
import 'package:outdoor/core/widgets/shadow.dart';

Widget searchBar ()=> Padding(
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