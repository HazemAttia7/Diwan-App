import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/core/helper/constants.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_search_field.dart';
import 'package:poem_app/features/home/presentation/views/widgets/home_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPagePadding),
        child: Column(
          children: [
            Gap(MediaQuery.sizeOf(context).height * 0.022),
            const HomeHeader(),
            Gap(MediaQuery.sizeOf(context).height * 0.027),
            const CustomSearchField(),
          ],
        ),
      ),
    );
  }
}
