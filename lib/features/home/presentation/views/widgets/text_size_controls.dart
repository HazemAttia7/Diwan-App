import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/controllers/font%20size/font_size_controller.dart';
import 'package:poem_app/core/utils/app_styles.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_divider.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_ripple_button.dart';
import 'package:provider/provider.dart';

class TextSizeControls extends StatelessWidget {
  const TextSizeControls({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSizeController = context.watch<FontSizeController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomRippleButton(
          widget: Center(
            child: Text(
              "A+",
              style: context.textStyle20.copyWith(
                color: fontSizeController.canIncrease
                    ? Theme.of(context).secondaryHeaderColor
                    : Theme.of(
                        context,
                      ).secondaryHeaderColor.withValues(alpha: 0.3),
              ),
            ),
          ),
          clickableArea: 30.sp,
          onTap: () {
            fontSizeController.increaseFontSize();
          },
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
                color: fontSizeController.canDecrease
                    ? Theme.of(context).secondaryHeaderColor
                    : Theme.of(
                        context,
                      ).secondaryHeaderColor.withValues(alpha: 0.3),
              ),
            ),
          ),
          clickableArea: 30.sp,
          onTap: () {
            fontSizeController.decreaseFontSize();
          },
        ),
      ],
    );
  }
}
