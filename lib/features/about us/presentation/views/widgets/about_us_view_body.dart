import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/core/helper/constants.dart';
import 'package:poem_app/features/about%20us/presentation/views/widgets/developers_section.dart';
import 'package:poem_app/features/about%20us/presentation/views/widgets/slogan_section.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_divider.dart';
import 'package:poem_app/features/home/presentation/views/widgets/page_header.dart';

class AboutUsViewBody extends StatelessWidget {
  const AboutUsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(MediaQuery.sizeOf(context).height * 0.022),
            const PageHeader(subTitle: 'من نحن'),
            Gap(MediaQuery.sizeOf(context).height * 0.035),
            Expanded(
              child: Column(
                children: [
                  const SolganSection(),
                  Gap(MediaQuery.sizeOf(context).height * 0.07),
                  CustomDivider(
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.2),
                    width: double.infinity,
                    height: 2.sp,
                    margin: 0,
                    borderRadius: BorderRadius.circular(9999.r),
                  ),
                  Gap(MediaQuery.sizeOf(context).height * 0.04),
                  const Align(
                    alignment: AlignmentDirectional.topStart,
                    child: DevelopersSection(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
