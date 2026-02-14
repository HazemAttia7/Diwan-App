import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:poem_app/core/utils/app_router.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_card.dart';

class ResultSection extends StatelessWidget {
  const ResultSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 18.h),
          child: PoemCard(
            number: index + 1,
            title: 'قصيدة',
            subtitle: 'النوع: مدح',
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.kPoemDetails,
                extra: {
                  'poemTitle': "قصيدة",
                  "verses": [
                    Verse(
                      firstHemistich: "firstHemistich",
                      secondHemistich: "secondHemistich",
                    ),
                  ],
                },
              );
            },
          ),
        );
      },
    );
  }
}
