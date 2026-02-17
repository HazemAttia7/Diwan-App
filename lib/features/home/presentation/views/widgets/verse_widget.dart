import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poem_app/core/controllers/font%20size/font_size_controller.dart';
import 'package:poem_app/core/helper/convet_to_arabic_number.dart';
import 'package:poem_app/core/utils/app_styles.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';
import 'package:provider/provider.dart';

class VerseWidget extends StatelessWidget {
  final Verse verse;
  final bool isBeingRead;
  final int verseNumber;
  const VerseWidget({
    super.key,
    required this.verse,
    this.isBeingRead = false,
    required this.verseNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<FontSizeController>(
      builder: (context, fontSizeController, _) {
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
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      color: Theme.of(
                        context,
                      ).colorScheme.secondary.withValues(alpha: 0.08),
                    )
                  : null,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        convertToArabicNumber(verseNumber).toString(),
                        style: context.textStyle16.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize:
                              (context.textStyle16.fontSize ?? 16.sp) *
                              fontSizeController.fontSizeMultiplier,
                        ),
                      ),
                      Gap(MediaQuery.sizeOf(context).height * 0.01),
                      Text(
                        verse.firstHemistich,
                        textAlign: TextAlign.start,
                        style: context.textStyle16.copyWith(
                          fontFamily: GoogleFonts.amiri().fontFamily,
                          fontSize:
                              (context.textStyle16.fontSize ?? 16.sp) *
                              fontSizeController.fontSizeMultiplier,
                        ),
                      ),
                    ],
                  ),
                  Gap(MediaQuery.sizeOf(context).height * 0.01),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      verse.secondHemistich,
                      textAlign: TextAlign.end,
                      style: context.textStyle16.copyWith(
                        fontFamily: GoogleFonts.amiri().fontFamily,
                        fontSize:
                            (context.textStyle16.fontSize ?? 16.sp) *
                            fontSizeController.fontSizeMultiplier,
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
                  color: Theme.of(context).colorScheme.secondary,
                  size: 24.sp,
                ),
              ),
          ],
        );
      },
    );
  }
}
