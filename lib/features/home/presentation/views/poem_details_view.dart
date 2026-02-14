import 'package:flutter/material.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_details_view_body.dart';

class PoemDetailsView extends StatelessWidget {
  final String poemTitle;
  final List<Verse> verses;
  const PoemDetailsView({
    super.key,
    required this.poemTitle,
    required this.verses,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PoemDetailsViewBody(poemTitle: poemTitle, verses: verses),
    );
  }
}
