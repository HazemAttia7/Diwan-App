import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/utils/app_styles.dart';

class CustomBadge extends StatelessWidget {
  final String text;
  const CustomBadge({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 2.sp),
      decoration: ShapeDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? Theme.of(
                context,
              ).colorScheme.surfaceContainerHigh.withValues(alpha: 0.06)
            : Theme.of(context).colorScheme.surfaceContainerHigh,
        shape: const StadiumBorder(),
      ),
      child: Text(text, style: context.textStyle11),
    );
  }
}
