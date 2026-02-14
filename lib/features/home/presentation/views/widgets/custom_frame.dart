import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFrame extends StatelessWidget {
  final Widget child;
  const CustomFrame({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
      padding: EdgeInsets.all(8.sp),
      foregroundDecoration: BoxDecoration(
        border: Border.all(
          width: 2.sp,
          color: Theme.of(context).colorScheme.tertiary.withValues(alpha: 0.4),
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 12.sp),
        foregroundDecoration: BoxDecoration(
          border: Border.all(
            width: 2.sp,
            color: Theme.of(
              context,
            ).colorScheme.tertiary.withValues(alpha: 0.2),
          ),
        ),
        child: child,
      ),
    );
  }
}
