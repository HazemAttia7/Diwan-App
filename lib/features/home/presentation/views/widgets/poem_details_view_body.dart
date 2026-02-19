import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/core/controllers/reader/reader_controller.dart';
import 'package:poem_app/core/widgets/staggered_animated_slide.dart';
import 'package:poem_app/features/home/data/models/poem_model.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_action_bar.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_details_header.dart';
import 'package:poem_app/features/home/presentation/views/widgets/text_size_controls.dart';
import 'package:poem_app/features/home/presentation/views/widgets/verse_widget.dart';
import 'package:provider/provider.dart';

class PoemDetailsViewBody extends StatelessWidget {
  final Poem poem;
  final String poetName;
  const PoemDetailsViewBody({
    super.key,
    required this.poem,
    required this.poetName,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 40.sp,
                bottom: 45.sp,
                left: 45.sp,
                right: 45.sp,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/vectorized poem frame.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: ListView(
                padding: EdgeInsets.all(5.sp),
                physics: const BouncingScrollPhysics(),
                children: [
                  Gap(MediaQuery.sizeOf(context).height * 0.02),
                  PoemDetailsHeader(poetName: poetName, poem: poem),
                  Gap(MediaQuery.sizeOf(context).height * 0.036),
                  PoemActionBar(poem: poem),
                  Gap(MediaQuery.sizeOf(context).height * 0.023),
                  ...List.generate(
                    poem.verses.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.sizeOf(context).height * 0.043,
                      ),
                      child: StaggeredAnimatedSlide(
                        delay: Duration(milliseconds: index * 100),
                        transfromDuration: const Duration(milliseconds: 800),
                        opacityDuration: const Duration(milliseconds: 600),
                        child: Consumer<ReaderController>(
                          builder: (context, readerController, _) {
                            return VerseWidget(
                              verse: poem.verses[index],
                              isBeingRead:
                                  readerController.currentVerseIndex == index,
                              verseNumber: index + 1,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.sp,
            child: Padding(
              padding: EdgeInsets.only(top: 5.sp),
              child: const TextSizeControls(),
            ),
          ),
        ],
      ),
    );
  }
}
