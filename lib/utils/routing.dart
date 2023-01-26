import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsapp_template/ui/screens/article/article_screen_connector.dart';
import 'package:newsapp_template/ui/screens/common_widgets/drawer/app_drawer.dart';
import 'package:newsapp_template/ui/screens/news_home/news_screen_connector.dart';
import 'package:newsapp_template/ui/screens/saved_shared/saved_shared_connector.dart';
import 'package:newsapp_template/ui/screens/settings/settings_screen.dart';

class AppRoutes {
  AppRoutes._();

  static const String home = '/news';
  static const String settings = '/settings';
  static const String saved = '/saved';
  static const String shared = '/shared';

  static String articleDetail(String id) => '$home/$id';
}

/// Router configuration
/// Use method [_goRoute] to add a new Route
final GoRouter routerConfig = GoRouter(
  initialLocation: AppRoutes.home,
  routes: <GoRoute>[

    /// Not using const otherwise the page isn't rebuilt on locale changes
    _goRoute(AppRoutes.home, (_, __) => const NewsScreenConnector(), routes: [
      _goRoute(':id', (_, state) => ArticleScreenConnector(article: state.articleExtra))
    ]),
    _goRoute(AppRoutes.settings, (_, __) => const SettingsScreen()),
    _goRoute(AppRoutes.saved, (_, __) => const SavedSharedScreenConnector(AppScreen.saved)),
    _goRoute(AppRoutes.shared, (_, __) => const SavedSharedScreenConnector(AppScreen.shared)),
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
  Article get articleExtra => extra as Article;
}
