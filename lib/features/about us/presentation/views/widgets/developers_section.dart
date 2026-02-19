import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/core/utils/app_styles.dart';

class DevelopersSection extends StatelessWidget {
  const DevelopersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "المطور: حازم عطية",
          style: context.textStyle14.copyWith(
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.8),
          ),
        ),
        Gap(MediaQuery.sizeOf(context).height * 0.01),
        Text(
          "الإصدار: 1.0.0",
          style: context.textStyle14.copyWith(
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.8),
          ),
        ),
        Gap(MediaQuery.sizeOf(context).height * 0.01),
        Text(
          "تواصل معنا: hazemco711@gmail.com",
          style: context.textStyle14.copyWith(
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.8),
          ),
        ),
      ],
    );
  }
}
