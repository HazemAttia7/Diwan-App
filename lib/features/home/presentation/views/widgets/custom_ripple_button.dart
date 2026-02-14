import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRippleButton extends StatelessWidget {
  final Widget widget;
  final double? clickableArea;
  final Color? iconColor;
  final VoidCallback onTap;
  const CustomRippleButton({
    super.key,
    required this.widget,
    this.clickableArea,
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
          width: clickableArea,
          height: clickableArea,
        ),
        child: widget,
      ),
    );
  }
}
