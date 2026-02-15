import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/controllers/font%20size/font_size_controller.dart';
import 'package:poem_app/core/utils/app_styles.dart';
import 'package:provider/provider.dart';

class TextSizeControls extends StatelessWidget {
  const TextSizeControls({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSizeController = context.watch<FontSizeController>();

    const divisions = 7;

    return Row(
      children: [
        Text(
          "A-",
          style: context.textStyle20.copyWith(
            color: context.textStyle20.color?.withValues(
              alpha: fontSizeController.canDecrease ? 1.0 : 0.3,
            ),
          ),
        ),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              inactiveTrackColor: SliderTheme.of(
                context,
              ).inactiveTrackColor?.withValues(alpha: 0.3),
              overlayColor: SliderTheme.of(
                context,
              ).overlayColor?.withValues(alpha: 0.2),
              trackHeight: 2.sp,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.sp),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 16.sp),
            ),
            child: Slider(
              value: fontSizeController.fontSizeMultiplier,
              min: 0.8,
              max: 1.5,
              divisions: divisions,
              onChanged: (value) {
                fontSizeController.setFontSize(value);
              },
            ),
          ),
        ),
        Text(
          "A+",
          style: context.textStyle20.copyWith(
            color: context.textStyle20.color?.withValues(
              alpha: fontSizeController.canDecrease ? 1.0 : 0.3,
            ),
          ),
        ),
      ],
    );
  }
}
