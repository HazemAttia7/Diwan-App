import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_frame.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_action_bar.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_details_header.dart';

class PoemDetailsViewBody extends StatelessWidget {
  final String poemTitle;
  final List<Verse> verses;
  const PoemDetailsViewBody({
    super.key,
    required this.poemTitle,
    required this.verses,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomFrame(
        child: Column(
          children: [
            Gap(MediaQuery.sizeOf(context).height * 0.02),
            PoemDetailsHeader(poemTitle: poemTitle),
            Gap(MediaQuery.sizeOf(context).height * 0.058),
            const PoemActionBar(),
          ],
        ),
      ),
    );
  }
}
