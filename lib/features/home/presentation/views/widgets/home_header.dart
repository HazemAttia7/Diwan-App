import 'package:flutter/material.dart';
import 'package:poem_app/core/utils/app_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.menu_rounded),
        Column(
          children: [
            Text("ديوان المتنبي", style: context.textStyle20),
            Text("الصفحة الرئيسية", style: context.textStyle10),
          ],
        ),
        const Icon(Icons.settings_outlined),
      ],
    );
  }
}
