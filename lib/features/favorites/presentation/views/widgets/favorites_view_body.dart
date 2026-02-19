import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:poem_app/core/helper/constants.dart';
import 'package:poem_app/core/widgets/staggered_animated_opacity_translation.dart';
import 'package:poem_app/features/favorites/data/managers/favorites_refresh_notifier.dart';
import 'package:poem_app/features/home/data/models/poet_model.dart';
import 'package:poem_app/features/home/data/repos/home_repo_impl.dart';
import 'package:poem_app/features/home/presentation/views/widgets/custom_search_field.dart';
import 'package:poem_app/features/home/presentation/views/widgets/page_header.dart';
import 'package:poem_app/features/home/presentation/views/widgets/result_section.dart';

class FavoritesViewBody extends StatefulWidget {
  const FavoritesViewBody({super.key});

  @override
  State<FavoritesViewBody> createState() => _FavoritesViewBodyState();
}

class _FavoritesViewBodyState extends State<FavoritesViewBody> {
  List<Poet> _savedPoets = [];
  List<Poet> _filteredPoets = [];
  bool _isLoading = true;

  Timer? _debounceTimer;

  void _onSearch(String query) {
    _debounceTimer?.cancel();

    final trimmed = query.trim();
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      setState(() {
        if (trimmed.isEmpty) {
          _filteredPoets = _savedPoets;
        } else {
          _filteredPoets = _savedPoets
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
    _loadFavoritePoems();
    favoritesRefreshNotifier.addListener(_loadFavoritePoems);
  }

  Future<void> _loadFavoritePoems() async {
    final savedPoems = await HomeRepoImpl().getSavedPoems();

    if (savedPoems.isEmpty) {
      setState(() {
        _savedPoets = [];
        _isLoading = false;
      });
      return;
    }

    final repo = HomeRepoImpl();
    final allPoets = await repo.getPoets();
    setState(() {
      _savedPoets = allPoets
          .map(
            (poet) => poet.copyWith(
              poems: poet.poems
                  .where(
                    (poem) => savedPoems.any((sPoem) => sPoem.id == poem.id),
                  )
                  .toList(),
            ),
          )
          .toList();
      _filteredPoets = _savedPoets;
      _isLoading = false;
    });
  }

  @override
  void dispose() {
    favoritesRefreshNotifier.removeListener(_loadFavoritePoems);
    _debounceTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPagePadding),
        child: CustomScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Gap(MediaQuery.sizeOf(context).height * 0.022),
                  StaggeredAnimatedOpacityTranslation(
                    widget: const PageHeader(subTitle: 'المفضلة'),
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
            _isLoading
                ? const SliverToBoxAdapter(
                    child: Center(child: CircularProgressIndicator()),
                  )
                : ResultSection(poets: _filteredPoets),
          ],
        ),
      ),
    );
  }
}
