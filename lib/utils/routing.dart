import 'package:bloc_template/ui/pages/anime/anime_detail_page.dart';
import 'package:bloc_template/ui/pages/anime/anime_page.dart';
import 'package:bloc_template/ui/pages/anime/anime_page_connector.dart';
import 'package:bloc_template/ui/pages/home/home_page.dart';
import 'package:bloc_template/ui/pages/home/home_page_connector.dart';
import 'package:bloc_template/ui/pages/splash/splash_page.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  AppRoutes._();

  static const String splash = '/splash';
  static const String home = '/home';
  static const String anime = '/anime';

  static String animeDetail(String id) => '$anime/$id';
}

/// Router configuration
/// Use method [_goRoute] to add a new Route
final GoRouter routerConfig = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: <GoRoute>[
    _goRoute(AppRoutes.splash, (_, __) => const SplashPage()),

    /// Not using const otherwise the page isn't rebuilt on locale changes
    _goRoute(AppRoutes.home, (_, __) => HomePageConnector(HomePage())),
    _goRoute(AppRoutes.anime, (_, __) => const AnimePageConnector(AnimePage()), routes: [
      _goRoute(':id', (_, state) => AnimeDetailPage(anime: state.animeExtra)),
    ]),
  ],
);

GoRoute _goRoute(String path, _GoRouterWidgetBuilder builder, {List<GoRoute> routes = const []}) {
  return GoRoute(path: path, builder: builder, routes: routes);
}

typedef _GoRouterWidgetBuilder = Widget Function(
  BuildContext context,
  GoRouterState state,
);

extension _GoRouterStateExtension on GoRouterState {
  Anime get animeExtra => extra as Anime;
}
