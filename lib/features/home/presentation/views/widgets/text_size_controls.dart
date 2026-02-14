import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/utils/app_styles.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_divider.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_ripple_button.dart';

class TextSizeControls extends StatelessWidget {
  const TextSizeControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomRippleButton(
          widget: Center(
            child: Text(
              "A+",
              style: context.textStyle20.copyWith(
                color: Theme.of(context).secondaryHeaderColor,
              ),
            ),
          ),
          clickableArea: 30.sp,
          onTap: () {},
        ),
        CustomDivider(
          color: const Color(0xff514C37),
          width: 1.5.sp,
          height: 18.sp,
          margin: 8.sp,
        ),
        CustomRippleButton(
          widget: Center(
            child: Text(
              "A-",
              style: context.textStyle20.copyWith(
                color: Theme.of(context).secondaryHeaderColor,
              ),
            ),
          ),
          clickableArea: 30.sp,
          onTap: () {},
        ),
      ],
    );
  }
}
