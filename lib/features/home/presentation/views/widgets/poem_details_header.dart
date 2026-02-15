import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/utils/app_styles.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_icon_button.dart';

class PoemDetailsHeader extends StatelessWidget {
  const PoemDetailsHeader({super.key, required this.poemTitle});

  final String poemTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(child: Text(poemTitle, style: context.textStyle20)),
        Positioned(
          top: 0,
          right: 0,
          child: CustomIconButton(
            icon: Icons.arrow_back,
            size: 24.sp,
            iconColor: Theme.of(context).textTheme.bodyLarge!.color,

            onTap: () => Navigator.pop(context),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: CustomIconButton(
            icon: Icons.more_vert,
            size: 24.sp,
            iconColor: Theme.of(context).textTheme.bodyLarge!.color,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
