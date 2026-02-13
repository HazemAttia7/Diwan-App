import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/utils/app_styles.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_icon_button.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(icon: Icons.menu_rounded, size: 24.sp, onTap: () {}),
        Column(
          children: [
            Text("ديوان المتنبي", style: context.textStyle20),
            Text("الصفحة الرئيسية", style: context.textStyle10),
          ],
        ),
        CustomIconButton(
          icon: Icons.settings_outlined,
          size: 24.sp,
          onTap: () {},
        ),
      ],
    );
  }
}
