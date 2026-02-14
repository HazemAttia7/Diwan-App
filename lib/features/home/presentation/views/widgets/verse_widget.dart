import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poem_app/core/utils/app_styles.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';

class VerseWidget extends StatelessWidget {
  final Verse verse;
  final bool isBeingRead;
  const VerseWidget({super.key, required this.verse, this.isBeingRead = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: isBeingRead ? EdgeInsets.all(16.sp) : null,
          decoration: isBeingRead
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border(
                    right: BorderSide(
                      width: 4.sp,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  color: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.08),
                )
              : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                verse.firstHemistich,
                style: context.textStyle16.copyWith(
                  fontFamily: GoogleFonts.notoNaskhArabic().fontFamily,
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  verse.secondHemistich,
                  style: context.textStyle16.copyWith(
                    fontFamily: GoogleFonts.notoNaskhArabic().fontFamily,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (isBeingRead)
          Positioned(
            left: 8.sp,
            top: 4.sp,
            child: Icon(
              Icons.record_voice_over,
              color: Theme.of(context).colorScheme.primary,
              size: 24.sp,
            ),
          ),
      ],
    );
  }
}
