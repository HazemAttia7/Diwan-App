import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:poem_app/core/theme/theme.dart';
import 'package:poem_app/core/theme/theme_controller.dart';
import 'package:poem_app/core/utils/app_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeController(),
      child: const PoemApp(),
    ),
  );
}

class PoemApp extends StatelessWidget {
  const PoemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 884),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return Consumer<ThemeController>(
          builder: (context, controller, child) {
            return MaterialApp.router(
              routerConfig: AppRouter.router,
              debugShowCheckedModeBanner: false,
              title: "Poem App",
              locale: const Locale('ar'),
              supportedLocales: const [Locale('ar'), Locale('en')],
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              theme: lightTheme,
              darkTheme: darkTheme,
              // themeMode: controller.themeMode,
              themeMode: ThemeMode.light, // for coding-testing purposes
            );
          },
        );
      },
    );
  }
}
