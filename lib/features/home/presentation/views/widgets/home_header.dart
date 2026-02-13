import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/utils/app_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu_rounded, size: 24.sp),
        Column(
          children: [
            Text("ديوان المتنبي", style: context.textStyle20),
            Text("الصفحة الرئيسية", style: context.textStyle10),
          ],
        ),
        Icon(Icons.settings_outlined, size: 24.sp),
      ],
    );
  }
}
