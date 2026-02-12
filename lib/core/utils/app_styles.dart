import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/utils/app_colors.dart';

abstract class AppStyles {
  // Text Fonts : 20 , 18 , 16 , 14 , 12 , 10

  static final textStyle20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: const Color(0xff0F172A),
  );

  static final textStyle18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static final textStyle16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.secondaryDarkerColor,
  );

  static final textStyle14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.secondaryColor,
  );

  static final textStyle12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.secondaryColor,
  );

  static final textStyle10 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.secondaryColor,
  );
}
