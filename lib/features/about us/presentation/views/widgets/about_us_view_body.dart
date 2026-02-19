import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/core/helper/constants.dart';
import 'package:poem_app/features/about%20us/presentation/views/widgets/slogan_section.dart';
import 'package:poem_app/features/home/presentation/views/widgets/page_header.dart';

class AboutUsViewBody extends StatelessWidget {
  const AboutUsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPagePadding),
          child: Column(
            children: [
              Gap(MediaQuery.sizeOf(context).height * 0.022),
              const PageHeader(subTitle: 'من نحن'),
              Gap(MediaQuery.sizeOf(context).height * 0.035),
              const SolganSection(),
              Gap(MediaQuery.sizeOf(context).height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
