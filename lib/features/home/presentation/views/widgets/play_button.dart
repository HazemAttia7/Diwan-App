import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/controllers/reader/reader_controller.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';
import 'package:provider/provider.dart';

class PlayButton extends StatelessWidget {
  final List<Verse> verses;
  const PlayButton({super.key, required this.verses});

  @override
  Widget build(BuildContext context) {
    final readerController = context.read<ReaderController>();

    return Ink(
      width: 50.sp,
      height: 50.sp,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        shape: BoxShape.circle,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(9999.r),
        child: Icon(
          readerController.isPlaying ? Icons.pause : Icons.play_arrow_outlined,
          color: Theme.of(context).colorScheme.surfaceContainer,
          size: 24.sp,
        ),
        onTap: () {
          if (readerController.isPlaying) {
            readerController.pause();
          } else {
            readerController.play(verses: verses);
          }
        },
      ),
    );
  }
}
