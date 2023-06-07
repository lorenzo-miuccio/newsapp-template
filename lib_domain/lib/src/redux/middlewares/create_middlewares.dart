import 'package:domain/domain.dart';
import 'package:domain/src/redux/middlewares/news_middleware.dart';
import 'package:domain/src/redux/middlewares/saved_news_middleware.dart';
import 'package:domain/src/redux/middlewares/settings_middleware.dart';
import 'package:domain/src/redux/middlewares/update_article_middleware.dart';
import 'package:redux/redux.dart';

List<dynamic Function(Store<AppState>, dynamic, dynamic Function(dynamic))> createMiddlewares(
        NewsRepository newsRepository, LanguageRepository languageRepository) =>
    [
      NewsMiddleware(newsRepository),
      UpdateArticleMIddleWare(newsRepository),
      SettingsMiddleware(languageRepository),
      SavedNewsMiddleware(newsRepository)
    ];
