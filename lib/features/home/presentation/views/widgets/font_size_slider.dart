import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/controllers/font%20size/font_size_controller.dart';
import 'package:provider/provider.dart';

class FontSizeSlider extends StatelessWidget {
  const FontSizeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSizeController = context.watch<FontSizeController>();

    const divisions = 7;
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        inactiveTrackColor: Theme.of(
          context,
        ).colorScheme.primary.withValues(alpha: 0.3),
        overlayColor: Theme.of(
          context,
        ).colorScheme.primary.withValues(alpha: 0.2),
        trackHeight: 2.sp,
        thumbColor: Theme.of(context).colorScheme.primary,
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
    );
  }
}
