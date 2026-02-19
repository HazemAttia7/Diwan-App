import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/utils/app_styles.dart';

class PoemInfoRichTextUnit extends StatelessWidget {
  final String label, value;
  const PoemInfoRichTextUnit({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: MediaQuery.sizeOf(context).width * 0.025,
      children: [
        Text(label, style: context.textStyle16),
        Container(
          width: double.infinity,
          padding: EdgeInsetsDirectional.only(start: 10.w),
          decoration: BoxDecoration(
            border: BorderDirectional(
              start: BorderSide(
                width: 2.sp,
                color: Theme.of(
                  context,
                ).colorScheme.primary.withValues(alpha: 0.7),
              ),
            ),
          ),
          child: Text.rich(
            TextSpan(
              style: context.textStyle16.copyWith(height: 1),
              text: value,
            ),
          ),
        ),
      ],
    );
  }
}
