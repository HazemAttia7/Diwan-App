import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({super.key});

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool isPlayed = false;
  @override
  Widget build(BuildContext context) {
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
          setState(() {
            isPlayed = !isPlayed;
          });
        },
      ),
    );
  }
}
