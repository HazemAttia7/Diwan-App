import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/controllers/reader/reader_controller.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_icon_button.dart';
import 'package:provider/provider.dart';

class SecondaryActions extends StatelessWidget {
  const SecondaryActions({super.key});

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
          icon: context.watch<ReaderController>().isPlaying
              ? Icons.stop
              : Icons.share_outlined,
          size: 26.sp,
          iconColor: Theme.of(context).secondaryHeaderColor,
          onTap: () {
            if (context.read<ReaderController>().isPlaying) {
              context.read<ReaderController>().stop();
              return;
            }
          },
        ),
      ],
    );
  }
}
