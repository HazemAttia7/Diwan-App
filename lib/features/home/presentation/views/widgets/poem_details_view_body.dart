import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/core/controllers/reader/reader_controller.dart';
import 'package:poem_app/core/widgets/staggered_animated_slide.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_action_bar.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_details_header.dart';
import 'package:poem_app/features/home/presentation/views/widgets/text_size_controls.dart';
import 'package:poem_app/features/home/presentation/views/widgets/verse_widget.dart';
import 'package:provider/provider.dart';

class PoemDetailsViewBody extends StatelessWidget {
  final String poemTitle;
  final List<Verse> verses;
  const PoemDetailsViewBody({
    super.key,
    required this.poemTitle,
    required this.verses,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ReaderController>(
      builder: (context, readerController, _) {
        return SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    ListView(
                      padding: EdgeInsets.only(
                        bottom: 36.sp,
                        left: 36.sp,
                        right: 36.sp,
                        top: 12.sp,
                      ),
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Gap(MediaQuery.sizeOf(context).height * 0.02),
                        PoemDetailsHeader(poemTitle: poemTitle),
                        Gap(MediaQuery.sizeOf(context).height * 0.036),
                        PoemActionBar(verses: verses),
                        Gap(MediaQuery.sizeOf(context).height * 0.046),
                        ...List.generate(
                          verses.length,
                          (index) => Padding(
                            padding: EdgeInsets.only(
                              bottom: MediaQuery.sizeOf(context).height * 0.04,
                            ),
                            child: StaggeredAnimatedSlide(
                              delay: Duration(milliseconds: index * 100),
                              transfromDuration: const Duration(
                                milliseconds: 800,
                              ),
                              opacityDuration: const Duration(
                                milliseconds: 600,
                              ),
                              child: VerseWidget(
                                verse: verses[index],
                                isBeingRead:
                                    readerController.currentVerseIndex == index,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned.fill(
                      child: Transform.scale(
                        scale: 1.1,
                        child: IgnorePointer(
                          child: SvgPicture.asset(
                            "assets/images/vectorized poem frame.svg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
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
      },
    );
  }
}
