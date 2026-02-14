import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';
import 'package:poem_app/features/home/presentation/views/widgets/play_button.dart';
import 'package:poem_app/features/home/presentation/views/widgets/secondary_actions.dart';
import 'package:poem_app/features/home/presentation/views/widgets/text_size_controls.dart';

class PoemActionBar extends StatelessWidget {
  final List<Verse> verses;
  const PoemActionBar({super.key, required this.verses});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.sp),
      child: Ink(
        padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 18.sp),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Theme.of(
                context,
              ).colorScheme.shadow.withValues(alpha: 0.07),
              blurRadius: 2.sp,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 80.sp, child: const TextSizeControls()),
            PlayButton(verses: verses),
            SizedBox(width: 80.sp, child: const SecondaryActions()),
          ],
        ),
      ),
    );
  }
}
