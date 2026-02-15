import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/controllers/font%20size/font_size_controller.dart';
import 'package:poem_app/core/utils/app_styles.dart';
import 'package:poem_app/features/home/presentation/views/widgets/font_size_slider.dart';
import 'package:provider/provider.dart';

class TextSizeControls extends StatelessWidget {
  const TextSizeControls({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSizeController = context.watch<FontSizeController>();

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: Row(
        children: [
          Text(
            "A-",
            style: context.textStyle20.copyWith(
              color: context.textStyle20.color?.withValues(
                alpha: fontSizeController.canDecrease ? 1.0 : 0.3,
              ),
            ),
          ),
          const Expanded(child: FontSizeSlider()),
          Text(
            "A+",
            style: context.textStyle20.copyWith(
              color: context.textStyle20.color?.withValues(
                alpha: fontSizeController.canDecrease ? 1.0 : 0.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
