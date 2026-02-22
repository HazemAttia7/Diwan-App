import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/core/utils/app_styles.dart';

class SolganSection extends StatelessWidget {
  const SolganSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '"موسوعة الشعر العربي في يدك"',
          style: context.textStyle20.copyWith(
            fontFamily: "NotoNastaliqUrdu"
          ),
        ),
        Gap(MediaQuery.sizeOf(context).height * 0.03),
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            style: context.textStyle14.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
            children: [
              TextSpan(
                text: "ديوان",
                style: context.textStyle18.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              const TextSpan(
                text:
                    " — تطبيق يجمع روائع الشعر العربي من مختلف العصور، يتيح لك قراءة القصائد وحفظ المفضلة والاستمتاع بها في أي وقت. نسعى إلى تقريب التراث الشعري من الأجيال الجديدة .",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
