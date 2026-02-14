import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/core/helper/constants.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_search_field.dart';
import 'package:poem_app/features/home/presentation/views/widgets/home_header.dart';
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
                  const HomeHeader(),
                  Gap(MediaQuery.sizeOf(context).height * 0.027),
                  const CustomSearchField(),
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
