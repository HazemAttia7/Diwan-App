import 'package:go_router/go_router.dart';
import 'package:poem_app/features/home/presentation/views/home_view.dart';
import 'package:poem_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const String kHome = '/home';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) =>  const HomeView(),
    ),
  ]);
}