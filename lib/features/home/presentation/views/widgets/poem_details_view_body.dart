import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_details_header.dart';

class PoemDetailsViewBody extends StatelessWidget {
  final String poemTitle;
  final List<Verse> verses;
  const PoemDetailsViewBody({
    super.key,
    required this.poemTitle,
    required this.verses,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
        padding: EdgeInsets.all(8.sp),
        foregroundDecoration: BoxDecoration(
          border: Border.all(
            width: 2.sp,
            color: Theme.of(
              context,
            ).colorScheme.tertiary.withValues(alpha: 0.4),
          ),
        ),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 12.sp),
          foregroundDecoration: BoxDecoration(
            border: Border.all(
              width: 2.sp,
              color: Theme.of(
                context,
              ).colorScheme.tertiary.withValues(alpha: 0.2),
            ),
          ),
          child: Column(
            children: [
              Gap(MediaQuery.sizeOf(context).height * 0.02),
              PoemDetailsHeader(poemTitle: poemTitle),
              Gap(MediaQuery.sizeOf(context).height * 0.058),
            ],
          ),
        ),
      ),
    );
  }
}
