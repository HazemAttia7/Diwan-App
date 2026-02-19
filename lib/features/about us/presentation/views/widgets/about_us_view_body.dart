import 'package:flutter/material.dart';
import 'package:poem_app/core/helper/constants.dart';
import 'package:poem_app/features/home/presentation/views/widgets/page_header.dart';

class AboutUsViewBody extends StatelessWidget {
  const AboutUsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPagePadding),
        child: const Column(
          children: [
            // TODO : Implement About Us view
            PageHeader(subTitle: 'من نحن'),
            Expanded(child: Center(child: Text("صفحة من نحن"))),
          ],
        ),
      ),
    );
  }
}
