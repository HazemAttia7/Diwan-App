import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/helper/constants.dart';
import 'package:poem_app/core/utils/app_styles.dart';
import 'package:poem_app/features/home/data/models/poem.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_divider.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_info_rich_text_unit.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_info_unit.dart';

class PoemInfoBottomSheet extends StatelessWidget {
  final String poetName;
  final Poem poem;
  const PoemInfoBottomSheet({
    super.key,
    required this.poetName,
    required this.poem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20.w,
        right: 20.w,
        top: 20.h,
        bottom: 35.h,
      ),
      child: Center(
        child: Column(
          spacing: MediaQuery.sizeOf(context).width * 0.05,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomDivider(
              color: Theme.of(
                context,
              ).colorScheme.primary.withValues(alpha: 0.5),
              width: 40.w,
              height: 3.sp,
              margin: 0,
              borderRadius: BorderRadius.circular(9999.r),
            ),
            Text("معلومات عن القصيدة", style: context.textStyle20),
            PoemInfoUnit(label: 'اسم الشاعر :', value: poetName),
            CustomDivider(
              color: Theme.of(
                context,
              ).colorScheme.primary.withValues(alpha: 0.1),

              width: double.infinity,
              height: 2.sp,
              margin: kHorizontalPagePadding,
            ),
            PoemInfoUnit(
              label: 'عدد الأبيات :',
              value: poem.versesCount.toString(),
            ),
            CustomDivider(
              color: Theme.of(
                context,
              ).colorScheme.primary.withValues(alpha: 0.1),

              width: double.infinity,
              height: 2.sp,
              margin: kHorizontalPagePadding,
            ),
            PoemInfoUnit(
              label: 'سنة التأليف :',
              value: poem.releaseYear?.toString() ?? 'غير معروفة',
            ),
            CustomDivider(
              color: Theme.of(
                context,
              ).colorScheme.primary.withValues(alpha: 0.1),
              width: double.infinity,
              height: 2.sp,
              margin: kHorizontalPagePadding,
            ),
            PoemInfoRichTextUnit(
              label: 'قصة القصيدة : ',
              value: poem.occasionStory ?? 'غير معروفة',
            ),
          ],
        ),
      ),
    );
  }
}
