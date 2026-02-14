import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_numbered_list_tile.dart';

class PoemCard extends StatelessWidget {
  final int number;
  final String title, subtitle;
  final VoidCallback onTap;
  const PoemCard({
    super.key,
    required this.number,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(24.r),
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomNumberedListTile(
                  number: number,
                  title: title,
                  subtitle: subtitle,
                  icon: Icons.insights,
                ),
              ),
              Gap(MediaQuery.sizeOf(context).height * 0.018),
              Icon(
                Icons.arrow_forward_ios,
                size: 16.sp,
                color: Theme.of(
                  context,
                ).colorScheme.secondary.withValues(alpha: 0.65),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
