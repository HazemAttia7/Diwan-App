import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final VoidCallback onTap;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.size,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.r),
      onTap: onTap,
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: 26.sp, height: 26.sp),
        child: Icon(icon, size: size),
      ),
    );
  }
}
