import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/controllers/reader/reader_controller.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_icon_button.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_save_button.dart';
import 'package:poem_app/features/home/presentation/views/widgets/play_button.dart';
import 'package:provider/provider.dart';

class PoemActionBar extends StatelessWidget {
  final List<Verse> verses;
  const PoemActionBar({super.key, required this.verses});

  @override
  Widget build(BuildContext context) {
    final readerController = context.watch<ReaderController>();
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomSaveButton(
              size: 26.sp,
              iconColor: Theme.of(context).textTheme.bodyLarge!.color,
              onTap: () {
                // TODO : Save the poem
              },
            ),
            PlayButton(verses: verses),
            CustomIconButton(
              icon: readerController.isPlaying
                  ? Icons.stop
                  : Icons.share_outlined,
              size: 26.sp,
              onTap: () {
                if (context.read<ReaderController>().isPlaying) {
                  context.read<ReaderController>().stop();
                  return;
                }
                // TODO : Share the poem
              },
              iconColor: readerController.isPlaying
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).textTheme.bodyLarge!.color,
            ),
          ],
        ),
      ),
    );
  }
}
