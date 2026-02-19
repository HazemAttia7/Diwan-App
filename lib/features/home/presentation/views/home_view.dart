import 'package:flutter/material.dart';
import 'package:poem_app/core/utils/app_styles.dart';
import 'package:poem_app/features/about%20us/presentation/views/about_us_view.dart';
import 'package:poem_app/features/favorites/presentation/views/favorites_view.dart';
import 'package:poem_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      typeOpen: TypeOpen.FROM_RIGHT,
      curveAnimation: Curves.easeInOut,
      initPositionSelected: 0,
      disableAppBarDefault: true,
      slidePercent: 60,
      backgroundColorMenu: Theme.of(context).scaffoldBackgroundColor,
      screens: [
        ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "الصفحة الرئيسية",
            baseStyle: context.textStyle16.copyWith(
              fontWeight: FontWeight.w500,
            ),
            selectedStyle: context.textStyle20,
          ),
          const Scaffold(resizeToAvoidBottomInset: true, body: HomeViewBody()),
        ),
        ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "المفضلة",
            baseStyle: context.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
            ),
            selectedStyle: context.textStyle20,
          ),
          const FavoritesView(),
        ),
        ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "من نحن",
            baseStyle: context.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
            ),
            selectedStyle: context.textStyle20,
          ),
          const AboutUsView(),
        ),
      ],
    );
  }
}
