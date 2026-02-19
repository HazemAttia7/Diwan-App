import 'package:flutter/material.dart';
import 'package:poem_app/features/home/data/models/poem_model.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_details_view_body.dart';

class PoemDetailsView extends StatelessWidget {
  final Poem poem;
  final String poetName;
  const PoemDetailsView({
    super.key,
    required this.poem,
    required this.poetName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PoemDetailsViewBody(poem: poem, poetName: poetName),
    );
  }
}
