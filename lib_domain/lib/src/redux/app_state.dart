import 'package:collection/collection.dart';
import 'package:domain/src/blocs/news_fetch/news_fetch_state.dart';
import 'package:domain/src/blocs/settings/settings.dart';
import 'package:domain/src/blocs/update_article/article_update_state.dart';
import 'package:domain/src/repository/language_repository.dart';

class AppState {
  final NewsFetchState everyThingNewsState;
  final NewsFetchState topNewsState;
  final NewsFetchState savedNewsState;
  final NewsFetchState sharedNewsState;
  final Settings settingsState;
  final ArticleUpdateState articleUpdateState;

  AppState({
    required this.savedNewsState,
    required this.sharedNewsState,
    required this.everyThingNewsState,
    required this.topNewsState,
    required this.settingsState,
    required this.articleUpdateState,
  });

  factory AppState.initialState(LanguageRepository languageRepository) => AppState(
      everyThingNewsState: NewsFetchState.idle(),
      topNewsState: NewsFetchState.idle(),
      settingsState: _languageMapper(languageRepository.getLanguage()),
      articleUpdateState: ArticleUpdateState.idle(),
      savedNewsState: NewsFetchState.idle(),
      sharedNewsState: NewsFetchState.idle());
}

Settings _languageMapper(String locale) =>
    Settings(language: Language.values.firstWhereOrNull((e) => e.name == locale) ?? Language.fallback);
