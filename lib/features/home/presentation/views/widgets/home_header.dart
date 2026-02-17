import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/controllers/theme/theme_controller.dart';
import 'package:poem_app/core/utils/app_styles.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_icon_button.dart';
import 'package:provider/provider.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          icon: Icons.menu_rounded,
          size: 24.sp,
          onTap: () {
            // TODO : Show Side Menu (Favourites , about us , contact us)
          },
          iconColor: Theme.of(context).textTheme.bodyLarge!.color,
        ),
        Column(
          children: [
            Text("ديوان", style: context.textStyle20),
            Text(
              "الصفحة الرئيسية",
              style: context.textStyle11.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        CustomIconButton(
          icon: Theme.of(context).brightness == Brightness.light
              ? Icons.dark_mode_outlined
              : Icons.light_mode_outlined,
          size: 24.sp,
          iconColor: Theme.of(context).textTheme.bodyLarge!.color,
          onTap: () {
            Provider.of<ThemeController>(
              context,
              listen: false,
            ).changeThemeMode();
          },
        ),
      ],
    );
  }
}
