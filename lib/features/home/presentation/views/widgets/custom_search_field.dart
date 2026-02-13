import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/utils/app_styles.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Padding(
          padding: EdgeInsetsDirectional.only(start: 16.w),
          child: Icon(Icons.search, size: 24.sp),
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: 40.sp,
          minHeight: 40.sp,
        ),
        prefixIconColor: Theme.of(context).colorScheme.secondary,
        hintText: "ابحث عن قصيدة أو كلمة...",
        hintStyle: context.textStyle14.copyWith(
          fontWeight: FontWeight.normal,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
