import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color? iconColor;
  final VoidCallback onTap;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.size,
    required this.onTap,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.r),
      onTap: onTap,
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: size + 2.sp,
          height: size + 2.sp,
        ),
        child: Icon(icon, size: size, color: iconColor),
      ),
    );
  }
}
