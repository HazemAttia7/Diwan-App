import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/core/utils/app_styles.dart';

// TODO : refactor
class CustomNumberedListTile extends StatelessWidget {
  final String title, subtitle;
  final int number;
  final IconData icon;
  const CustomNumberedListTile({
    super.key,
    required this.number,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 8.sp),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainer,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Text(number.toString(), style: context.textStyle18),
        ),
        Gap(MediaQuery.sizeOf(context).width * 0.041),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: context.textStyle16,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Row(
                children: [
                  Icon(
                    icon,
                    size: 14.sp,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  Gap(MediaQuery.sizeOf(context).width * 0.02),
                  Text(
                    subtitle,
                    style: context.textStyle12,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
