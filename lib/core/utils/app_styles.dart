import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyles {
  // Text Fonts : 20 , 18 , 16 , 14 , 12 , 10

  static final textStyle20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );

  static final textStyle18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
  );

  static final textStyle16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );

  static final textStyle14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
  );

  static final textStyle12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
  );

  static final textStyle10 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.bold,
  );
}

extension AppStylesX on BuildContext {
  TextStyle get textStyle20 => AppStyles.textStyle20;

  TextStyle get textStyle18 =>
      AppStyles.textStyle18.copyWith(color: Theme.of(this).colorScheme.primary);

  TextStyle get textStyle16 => AppStyles.textStyle16;

  TextStyle get textStyle14 => AppStyles.textStyle14.copyWith(
    color: Theme.of(this).colorScheme.secondary,
  );

  TextStyle get textStyle12 => AppStyles.textStyle12.copyWith(
    color: Theme.of(this).colorScheme.secondary,
  );

  TextStyle get textStyle10 =>
      AppStyles.textStyle10.copyWith(color: Theme.of(this).colorScheme.primary);
}
