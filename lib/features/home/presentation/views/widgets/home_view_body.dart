import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/core/helper/constants.dart';
import 'package:poem_app/core/widgets/staggered_animated_opacity_translation.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_search_field.dart';
import 'package:poem_app/features/home/presentation/views/widgets/page_header.dart';
import 'package:poem_app/features/home/presentation/views/widgets/result_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPagePadding),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Gap(MediaQuery.sizeOf(context).height * 0.022),
                  StaggeredAnimatedOpacityTranslation(
                    widget: const PageHeader(subTitle: 'الصفحة الرئيسية',),
                    opacityDuration: const Duration(seconds: 1),
                    transformDuration: const Duration(milliseconds: 800),
                    xOffset: 50.w,
                  ),
                  Gap(MediaQuery.sizeOf(context).height * 0.027),
                  // TODO : edit animation opacity problem
                  StaggeredAnimatedOpacityTranslation(
                    delay: const Duration(milliseconds: 700),
                    widget: const CustomSearchField(),
                    opacityDuration: const Duration(seconds: 1),
                    transformDuration: const Duration(milliseconds: 800),
                    xOffset: -50.w,
                  ),
                  Gap(MediaQuery.sizeOf(context).height * 0.036),
                ],
              ),
            ),
            const SliverFillRemaining(child: ResultSection()),
          ],
        ),
      ),
    );
  }
}
