import 'package:flutter/material.dart';
import 'package:poem_app/core/helper/constants.dart';
import 'package:poem_app/features/home/presentation/views/widgets/page_header.dart';

class ContactUsViewBody extends StatelessWidget {
  const ContactUsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPagePadding),
        child: const Column(
          children: [
            PageHeader(subTitle: 'تواصل معنا'),
            Expanded(child: Center(child: Text("صفحة تواصل معنا"))),
          ],
        ),
      ),
    );
  }
}
