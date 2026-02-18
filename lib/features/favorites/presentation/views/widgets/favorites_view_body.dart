import 'package:flutter/material.dart';
import 'package:poem_app/core/helper/constants.dart';
import 'package:poem_app/features/home/presentation/views/widgets/page_header.dart';

class FavoritesViewBody extends StatelessWidget {
  const FavoritesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPagePadding),
        child: const Column(
          children: [
            PageHeader(subTitle: 'المفضلة'),
            Expanded(child: Center(child: Text("صفحة القصائد المفضلة"))),
          ],
        ),
      ),
    );
  }
}
