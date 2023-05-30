import 'package:domain/src/blocs/news_fetch/news_fetch_state.dart';
import 'package:domain/src/blocs/settings/settings.dart';
import 'package:domain/src/blocs/update_article/article_update_state.dart';

class AppState {
  final NewsFetchState everyThingNewsState;
  final NewsFetchState topNewsState;
  final Settings settingsState;
  final ArticleUpdateState articleUpdateState;

  AppState({
    required this.everyThingNewsState,
    required this.topNewsState,
    required this.settingsState,
    required this.articleUpdateState,
  });

  factory AppState.initialState() =>
      AppState(everyThingNewsState: NewsFetchState.idle(),
          topNewsState: NewsFetchState.idle(),
          settingsState: Settings(language: Language.fallback),
          articleUpdateState: ArticleUpdateState.idle());
}
