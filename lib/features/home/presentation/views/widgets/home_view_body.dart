import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/core/helper/constants.dart';
import 'package:poem_app/core/widgets/staggered_animated_opacity_translation.dart';
import 'package:poem_app/features/home/data/models/poet_model.dart';
import 'package:poem_app/features/home/data/repos/home_repo_impl.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_search_field.dart';
import 'package:poem_app/features/home/presentation/views/widgets/page_header.dart';
import 'package:poem_app/features/home/presentation/views/widgets/result_section.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  late Future<List<Poet>> _initGetPoets;
  List<Poet> _allPoets = [];
  List<Poet> _filteredPoets = [];

  Timer? _debounceTimer;

  void _onSearch(String query) {
    _debounceTimer?.cancel();

    final trimmed = query.trim();
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      setState(() {
        if (trimmed.isEmpty) {
          _filteredPoets = _allPoets;
        } else {
          _filteredPoets = _allPoets
              .where(
                (poet) =>
                    poet.poems.any((poem) => poem.title.contains(trimmed)) ||
                    poet.name.contains(trimmed),
              )
              .map((poet) {
                if (poet.name.contains(trimmed)) {
                  return poet;
                }

                return poet.copyWith(
                  poems: poet.poems
                      .where((poem) => poem.title.contains(trimmed))
                      .toList(),
                );
              })
              .toList();
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _initGetPoets = HomeRepoImpl().getPoets();
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Poet>>(
      future: _initGetPoets,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).colorScheme.primary,
            ),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          if (_allPoets.isEmpty) {
            _allPoets = snapshot.data!;
            _filteredPoets = snapshot.data!;
          }

          return SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kHorizontalPagePadding),
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Gap(MediaQuery.sizeOf(context).height * 0.022),
                        StaggeredAnimatedOpacityTranslation(
                          widget: const PageHeader(subTitle: 'الصفحة الرئيسية'),
                          opacityDuration: const Duration(seconds: 1),
                          transformDuration: const Duration(milliseconds: 800),
                          xOffset: 50.w,
                        ),
                        Gap(MediaQuery.sizeOf(context).height * 0.027),
                        StaggeredAnimatedOpacityTranslation(
                          delay: const Duration(milliseconds: 150),
                          widget: CustomSearchField(onChanged: _onSearch),
                          opacityDuration: const Duration(seconds: 1),
                          transformDuration: const Duration(milliseconds: 800),
                          xOffset: -50.w,
                        ),
                        Gap(MediaQuery.sizeOf(context).height * 0.036),
                      ],
                    ),
                  ),
                  ResultSection(poets: _filteredPoets),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
