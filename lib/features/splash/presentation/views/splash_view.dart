import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poem_app/core/utils/app_router.dart';
import 'package:poem_app/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement(AppRouter.kHome);
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SplashViewBody(
        primaryColor: isDark
            ? const Color(0xffFFFCDA)
            : const Color(0xff917129),
      ),
    );
  }
}
