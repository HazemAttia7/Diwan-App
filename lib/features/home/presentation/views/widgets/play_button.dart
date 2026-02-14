import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/reader/reader_controller.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';
import 'package:provider/provider.dart';

class PlayButton extends StatefulWidget {
  final List<Verse> verses;
  const PlayButton({super.key, required this.verses});

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool isPlayed = false;
  @override
  Widget build(BuildContext context) {
    final readerController = context.read<ReaderController>();

    return Ink(
      width: 50.sp,
      height: 50.sp,
      decoration: const BoxDecoration(
        color: Color(0xffC19A6B),
        shape: BoxShape.circle,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(9999.r),
        child: Icon(
          isPlayed ? Icons.pause : Icons.play_arrow_outlined,
          color: Colors.white,
          size: 24.sp,
        ),
        onTap: () {
          if (readerController.isPlaying) {
            readerController.pause();
          } else {
            readerController.play(verses: widget.verses);
          }
          setState(() {
            isPlayed = !isPlayed;
          });
        },
      ),
    );
  }
}
