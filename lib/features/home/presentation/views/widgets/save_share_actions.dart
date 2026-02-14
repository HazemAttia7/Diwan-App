import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_icon_button.dart';

class SaveShareActions extends StatelessWidget {
  const SaveShareActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          icon: Icons.bookmark_border,
          size: 26.sp,
          iconColor: Theme.of(context).secondaryHeaderColor,
          onTap: () {},
        ),

        CustomIconButton(
          icon: Icons.share_outlined,
          size: 26.sp,
          iconColor: Theme.of(context).secondaryHeaderColor,
          onTap: () {},
        ),
      ],
    );
  }
}
