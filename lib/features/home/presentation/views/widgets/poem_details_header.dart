import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/utils/app_styles.dart';
import 'package:poem_app/features/home/data/models/poem_model.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_icon_button.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_info_bottom_sheet.dart';

class PoemDetailsHeader extends StatelessWidget {
  const PoemDetailsHeader({
    super.key,
    required this.poem,
    required this.poetName,
  });
  final Poem poem;
  final String poetName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          icon: Icons.arrow_back,
          size: 24.sp,
          iconColor: Theme.of(context).textTheme.bodyLarge!.color,
          onTap: () => Navigator.pop(context),
        ),
        Expanded(
          child: Text(
            poem.title,
            style: context.textStyle20,
            textAlign: TextAlign.center,
          ),
        ),
        CustomIconButton(
          icon: Icons.info_outline,
          size: 24.sp,
          iconColor: Theme.of(context).textTheme.bodyLarge!.color,
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              elevation: 10,
              context: context,
              builder: (_) => Wrap(
                children: [PoemInfoBottomSheet(poetName: poetName, poem: poem)],
              ),
            );
          },
        ),
      ],
    );
  }
}
