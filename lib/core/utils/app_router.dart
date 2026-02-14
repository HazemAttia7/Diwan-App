import 'package:go_router/go_router.dart';
import 'package:poem_app/core/reader/reader_controller.dart';
import 'package:poem_app/features/home/data/models/verse_model.dart';
import 'package:poem_app/features/home/presentation/views/home_view.dart';
import 'package:poem_app/features/home/presentation/views/poem_details_view.dart';
import 'package:poem_app/features/splash/presentation/views/splash_view.dart';
import 'package:provider/provider.dart';

abstract class AppRouter {
  static const String kHome = '/home';
  static const String kPoemDetails = '/poem-details';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHome, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kPoemDetails,
        builder: (context, state) {
          final args = state.extra as Map<String, dynamic>;
          return ChangeNotifierProvider(
            create: (_) => ReaderController(),
            child: PoemDetailsView(
              poemTitle: args["poemTitle"],
              verses: args["verses"] as List<Verse>,
            ),
          );
        },
      ),
    ],
  );
}
