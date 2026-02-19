import 'package:flutter/material.dart';
import 'package:poem_app/core/utils/app_styles.dart';

class PoemInfoUnit extends StatelessWidget {
  final String label, value;
  const PoemInfoUnit({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: context.textStyle16),
        Text(value, style: context.textStyle16),
      ],
    );
  }
}
