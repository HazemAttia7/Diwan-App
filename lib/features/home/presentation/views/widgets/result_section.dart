import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:poem_app/core/utils/app_router.dart';
import 'package:poem_app/core/widgets/staggered_animated_slide.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';
import 'package:poem_app/features/home/presentation/views/widgets/poem_card.dart';

class ResultSection extends StatelessWidget {
  const ResultSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 18.h),
          child: StaggeredAnimatedSlide(
            delay: Duration(milliseconds: index * 150),
            transfromDuration: const Duration(milliseconds: 800),
            opacityDuration: const Duration(milliseconds: 600),
            child: PoemCard(
              number: index + 1,
              title: 'قصيدة',
              subtitle: 'عدد الأبيات : ٣٠',
              onTap: () {
                GoRouter.of(context).push(
                  AppRouter.kPoemDetails,
                  extra: {
                    'poemTitle': "قصيدة",
                    "verses": [
                      Verse(
                        firstHemistich:
                            "وَاحَرَّ قَلْبَاهُ مِمَّنْ قَلْبُهُ شَبِمُ",
                        secondHemistich:
                            "وَمَنْ بِجِسْمِي وَحَالِي عِنْدَهُ سَقَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "مَا لِي أُكَتِّمُ حُبًّا قَدْ بَرَى جَسَدِي",
                        secondHemistich:
                            "وَتَدَّعِي حُبَّ سَيْفِ الدَّوْلَةِ الأُمَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "إِنْ كَانَ يَجْمَعُنَا حُبٌّ لِغُرَّتِهِ",
                        secondHemistich:
                            "فَلَيْتَ أَنَّا بِقَدْرِ الحُبِّ نَقْتَسِمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "قَدْ زُرْتُهُ وَسُيُوفُ الهِنْدِ مُغْمَدَةٌ",
                        secondHemistich:
                            "وَقَدْ نَظَرْتُ إِلَيْهِ وَالسُّيُوفُ دَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "فَكَانَ أَحْسَنَ خَلْقِ اللَّهِ كُلِّهِمِ",
                        secondHemistich:
                            "وَكَانَ أَحْسَنَ مَا فِي الأَحْسَنِ الشِّيَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "فَوْتُ العَدُوِّ الَّذِي يَمَّمْتَهُ ظَفَرٌ",
                        secondHemistich:
                            "فِي طَيِّهِ أَسَفٌ فِي طَيِّهِ نِعَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "قَدْ نَابَ عَنْكَ شَدِيدُ الخَوْفِ وَاصْطَنَعَتْ",
                        secondHemistich:
                            "لَكَ المَهَابَةُ مَا لا تَصْنَعُ البُهَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "أَلْزَمْتَ نَفْسَكَ شَيْئًا لَيْسَ يَلْزَمُهَا",
                        secondHemistich:
                            "أَنْ لا يُوَارِيَهُمْ أَرْضٌ وَلا عَلَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "أَكُلَّمَا رُمْتَ جَيْشًا فَانْثَنَى هَرَبًا",
                        secondHemistich:
                            "تَصَرَّفَتْ بِكَ فِي آثَارِهِ الهِمَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "عَلَيْكَ هَزْمُهُمْ فِي كُلِّ مُعْتَرَكٍ",
                        secondHemistich:
                            "وَمَا عَلَيْكَ بِهِمْ عَارٌ إِذَا انهَزَمُوا",
                      ),
                      Verse(
                        firstHemistich:
                            "أَمَا تَرَى ظَفَرًا حُلْوًا سِوَى ظَفَرٍ",
                        secondHemistich:
                            "تَصَافَحَتْ فِيهِ بِيضُ الهِنْدِ وَاللِّمَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "يَا أَعْدَلَ النَّاسِ إِلَّا فِي مُعَامَلَتِي",
                        secondHemistich:
                            "فِيكَ الخِصَامُ وَأَنْتَ الخَصْمُ وَالحَكَمُ",
                      ),
                      Verse(
                        firstHemistich: "أُعِيذُهَا نَظَرَاتٍ مِنْكَ صَادِقَةً",
                        secondHemistich:
                            "أَنْ تَحْسَبَ الشَّحْمَ فِيمَنْ شَحْمُهُ وَرَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "وَمَا انْتِفَاعُ أَخِي الدُّنْيَا بِنَاظِرِهِ",
                        secondHemistich:
                            "إِذَا اسْتَوَتْ عِنْدَهُ الأَنْوَارُ وَالظُّلَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "سَيَعْلَمُ الجَمْعُ مِمَّنْ ضَمَّ مَجْلِسُنَا",
                        secondHemistich:
                            "بِأَنَّنِي خَيْرُ مَنْ تَسْعَى بِهِ قَدَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "أَنَا الَّذِي نَظَرَ الأَعْمَى إِلَى أَدَبِي",
                        secondHemistich:
                            "وَأَسْمَعَتْ كَلِمَاتِي مَنْ بِهِ صَمَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "أَنَامُ مِلْءَ جُفُونِي عَنْ شَوَارِدِهَا",
                        secondHemistich:
                            "وَيَسْهَرُ الخَلْقُ جَرَّاهَا وَيَخْتَصِمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "وَجَاهِلٍ مَدَّهُ فِي جَهْلِهِ ضَحِكِي",
                        secondHemistich:
                            "حَتَّى أَتَتْهُ يَدٌ فَرَّاسَةٌ وَفَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "إِذَا رَأَيْتَ نُيُوبَ اللَّيْثِ بَارِزَةً",
                        secondHemistich:
                            "فَلا تَظُنَّنَّ أَنَّ اللَّيْثَ يَبْتَسِمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "وَمُهْجَةٍ مُهْجَتِي مِنْ هَمِّ صَاحِبِهَا",
                        secondHemistich:
                            "أَدْرَكْتُهَا بِجَوَادٍ ظَهْرُهُ حَرَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "رِجْلاهُ فِي الرَّكْضِ رِجْلٌ وَاليَدَانِ يَدٌ",
                        secondHemistich:
                            "وَفِعْلُهُ مَا تُرِيدُ الكَفُّ وَالقَدَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "وَمُرْهَفٍ سِرْتُ بَيْنَ الجَحْفَلَيْنِ بِهِ",
                        secondHemistich:
                            "حَتَّى ضَرَبْتُ وَمَوْجُ المَوْتِ يَلْتَطِمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "الخَيْلُ وَاللَّيْلُ وَالبَيْدَاءُ تَعْرِفُنِي",
                        secondHemistich:
                            "وَالسَّيْفُ وَالرُّمْحُ وَالقِرْطَاسُ وَالقَلَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "صَحِبْتُ فِي الفَلَوَاتِ الوَحْشَ مُنْفَرِدًا",
                        secondHemistich:
                            "حَتَّى تَعَجَّبَ مِنِّي القُورُ وَالأَكَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "يَا مَنْ يَعِزُّ عَلَيْنَا أَنْ نُفَارِقَهُمْ",
                        secondHemistich:
                            "وِجْدَانُنَا كُلَّ شَيْءٍ بَعْدَكُمْ عَدَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "مَا كَانَ أَخْلَقَنَا مِنْكُمْ بِتَكْرِمَةٍ",
                        secondHemistich:
                            "لَوْ أَنَّ أَمْرَكُمْ مِنْ أَمْرِنَا أَمَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "إِنْ كَانَ سِرَّكُمْ مَا قَالَ حَاسِدُنَا",
                        secondHemistich:
                            "فَمَا لِجُرْحٍ إِذَا أَرْضَاكُمُ أَلَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "وَبَيْنَنَا لَوْ رَعَيْتُمْ ذَاكَ مَعْرِفَةٌ",
                        secondHemistich:
                            "إِنَّ الْمَعَارِفَ فِي أَهْلِ النُّهَى ذِمَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "كَمْ تَطْلُبُونَ لَنَا عَيْبًا فَيُعْجِزُكُمْ",
                        secondHemistich:
                            "وَيَكْرَهُ اللَّهُ مَا تَأْتُونَ وَالْكَرَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "مَا أَبْعَدَ الْعَيْبَ وَالنُّقْصَانَ مِنْ شَرَفِي",
                        secondHemistich:
                            "أَنَا الثُّرَيَّا وَذَانِ الشَّيْبُ وَالْهَرَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "لَيْتَ الْغَمَامَ الَّذِي عِنْدِي صَوَاعِقُهُ",
                        secondHemistich:
                            "يُزِيلُهُنَّ إِلَى مَنْ عِنْدَهُ الدِّيَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "أَرَى النَّوَى يَقْتَضِينِي كُلَّ مَرْحَلَةٍ",
                        secondHemistich:
                            "لَا تَسْتَقِلُّ بِهَا الْوَخَّادَةُ الرُّسُمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "لَئِنْ تَرَكْنَ ضُمَيْرًا عَنْ مَيَامِنِنَا",
                        secondHemistich:
                            "لَيَحْدُثَنَّ لِمَنْ وَدَّعْتُهُمْ نَدَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "إِذَا تَرَحَّلْتَ عَنْ قَوْمٍ وَقَدْ قَدَرُوا",
                        secondHemistich:
                            "أَنْ لَا تُفَارِقَهُمْ فَالرَّاحِلُونَ هُمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "شَرُّ الْبِلَادِ مَكَانٌ لَا صَدِيقَ بِهِ",
                        secondHemistich:
                            "وَشَرُّ مَا يَكْسِبُ الْإِنْسَانُ مَا يَصِمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "وَشَرُّ مَا قَنَّصَتْهُ رَاحَتِي قَنَصٌ",
                        secondHemistich:
                            "شُهْبُ الْبُزَاةِ سَوَاءٌ فِيهِ وَالرَّخَمُ",
                      ),
                      Verse(
                        firstHemistich:
                            "بِأَيِّ لَفْظٍ تَقُولُ الشِّعْرَ زِعْنِفَةٌ",
                        secondHemistich:
                            "تَجُوزُ عِنْدَكَ لَا عُرْبٌ وَلَا عَجَمُ",
                      ),
                      Verse(
                        firstHemistich: "هَذَا عِتَابُكَ إِلَّا أَنَّهُ مِقَةٌ",
                        secondHemistich:
                            "قَدْ ضُمِّنَ الدُّرَّ إِلَّا أَنَّهُ كَلِمُ",
                      ),
                    ],
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
