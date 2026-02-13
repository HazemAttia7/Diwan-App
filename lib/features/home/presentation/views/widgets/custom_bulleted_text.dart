import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart' show Gap;
import 'package:poem_app/core/utils/app_styles.dart';

class CustomBulletedText extends StatelessWidget {
  final String text;
  const CustomBulletedText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 6.sp,
          height: 6.sp,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiary,
            shape: BoxShape.circle,
          ),
        ),
        Gap(MediaQuery.sizeOf(context).width * 0.02),
        Text(text, style: context.textStyle14),
      ],
    );
  }
}
