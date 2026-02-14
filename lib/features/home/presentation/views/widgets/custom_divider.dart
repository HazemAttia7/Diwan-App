import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final Color color;
  final double width, height, margin;
  const CustomDivider({
    super.key,
    required this.color,
    required this.width,
    required this.height,
    required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.symmetric(horizontal: margin),
      color: color,
    );
  }
}
