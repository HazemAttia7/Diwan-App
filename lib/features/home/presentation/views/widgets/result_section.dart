import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:poem_app/core/utils/app_router.dart';
import 'package:poem_app/core/utils/app_styles.dart';
import 'package:poem_app/core/widgets/staggered_animated_slide.dart';
import 'package:poem_app/features/home/data/models/poet_model.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_card.dart';

class ResultSection extends StatelessWidget {
  final List<Poet> poets;
  const ResultSection({super.key, required this.poets});

  @override
  Widget build(BuildContext context) {
    final poems = poets.expand((poet) => poet.poems).toList();

    return poems.isEmpty
        ? SliverToBoxAdapter(
            child: Center(
              child: Text("لا يوجد قصائد", style: context.textStyle16),
            ),
          )
        : SliverList.builder(
            itemCount: poems.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: StaggeredAnimatedSlide(
                  delay: Duration(milliseconds: index * 150),
                  transfromDuration: const Duration(milliseconds: 800),
                  opacityDuration: const Duration(milliseconds: 600),
                  child: PoemCard(
                    number: index + 1,
                    title: poems[index].title,
                    subtitle: 'عدد الأبيات : ${poems[index].versesCount}',
                    onTap: () {
                      final poet = poets.firstWhere(
                        (poet) => poet.poems.any(
                          (poem) => poem.title == (poems[index].title),
                        ),
                      );
                      GoRouter.of(context).push(
                        AppRouter.kPoemDetails,
                        extra: {"poem": poems[index], "poet-name": poet.name},
                      );
                    },
                  ),
                ),
              );
            },
          );
  }
}
