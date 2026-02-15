import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashViewBody extends StatelessWidget {
  final Color primaryColor;
  const SplashViewBody({super.key, required this.primaryColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "ديوان",
            style: TextStyle(
              fontSize: 47.h + 1.w,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.notoNastaliqUrdu().fontFamily,
              color: primaryColor,
              letterSpacing: 2.sp
            ),
          ),
          Gap(MediaQuery.sizeOf(context).height * 0.05 + 1.w),
          LoadingAnimationWidget.waveDots(
            color: primaryColor,
            size: 40.h + 1.w,
          ),
        ],
      ),
    );
  }
}
