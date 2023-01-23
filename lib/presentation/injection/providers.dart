import 'package:get_it/get_it.dart';
import 'package:news_app/data/datasource/news_datasources.dart';
import 'package:news_app/data/datasource/news_local_datasource.dart';
import 'package:news_app/data/key_value_service.dart';
import 'package:news_app/data/repository/language_repository_impl.dart';
import 'package:news_app/data/repository/news_repository_impl.dart';
import 'package:news_app/domain/repository/language_repository.dart';
import 'package:news_app/domain/repository/news_repository.dart';
import 'package:news_app/domain/usecase/get_language_usecase.dart';
import 'package:news_app/domain/usecase/get_saved_news_usecase.dart';
import 'package:news_app/domain/usecase/get_news_usecases.dart';
import 'package:news_app/domain/usecase/search_news_usecase.dart';
import 'package:news_app/domain/usecase/update_article_usecase.dart';
import 'package:news_app/domain/usecase/update_language_usecase.dart';
import 'package:news_app/presentation/blocs/news_fetch/everything_news_bloc.dart';
import 'package:news_app/presentation/blocs/locale_bloc.dart';
import 'package:news_app/presentation/blocs/news_fetch/saved_shared_news_bloc.dart';
import 'package:news_app/presentation/blocs/news_fetch/top_news_bloc.dart';
import 'package:news_app/presentation/blocs/update_article/update_article_bloc.dart';
import 'package:news_app/service/database/article_database.dart';
import 'package:news_app/service/database/news_local_datasource_impl.dart';
import 'package:news_app/service/key_value_service_impl.dart';
import 'package:news_app/service/remote/news_remote_datasource_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

///
/// This file contains everything related to dependency injection
///

GetIt get getIt => GetIt.instance;

Future<void> initGetIt() async {
  await _provideDataSource();
  _provideBlocs();
  _provideRepositories();
  _provideUseCase();
}

/// With this method you have to register all interfaces and classes of the datasources
Future<void> _provideDataSource() async {
  getIt.registerLazySingleton<NewsRemoteDatasource>(() => NewsRemoteDatasourceImpl());
  //getIt.registerLazySingleton<NewsRemoteDatasource>(() => NewsRemoteMockImpl());

  final db = await $FloorNewsDatabase.databaseBuilder('news_database.db').build();

  getIt.registerLazySingleton<NewsLocalDatasource>(() => NewsLocalDatasourceImpl(articleDao: db.newsDao));

  final prefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<KeyValueService>(() => KeyValueServiceImpl(prefs));
}

void _provideRepositories() {
  getIt.registerLazySingleton<NewsRepository>(
      () => NewsRepositoryImpl(newsRemoteDatasource: getIt(), newsLocalDatasource: getIt()));
  getIt.registerLazySingleton<LanguageRepository>(() => LanguageRepositoryImpl(getIt()));
}

/// With this method you have to register all usecases
void _provideUseCase() {
  getIt.registerFactory(() => GetEverythingNewsUsecase(getIt()));
  getIt.registerFactory(() => GetTopNewsUsecase(getIt()));
  getIt.registerFactory(() => SearchNewsUsecase(getIt()));
  getIt.registerFactory(() => UpdateLanguageUsecase(getIt()));
  getIt.registerFactory(() => GetLanguageUsecase(getIt()));
  getIt.registerFactory(() => GetSavedOrSharedNewsUsecase(getIt()));
  getIt.registerFactory(() => UpdateArticleUsecase(getIt()));
}

/// With this method you have to register all blocs
void _provideBlocs() {
  getIt.registerFactory(() => EveryThingNewsCubit(getIt(), getIt()));
  getIt.registerFactory(() => TopNewsCubit(getIt()));
  getIt.registerFactory(() => LocaleCubit(getIt(), getIt()));
  getIt.registerFactory(() => SavedSharedNewsCubit(getIt()));
  getIt.registerFactory(() => UpdateArticleCubit(getIt()));
}
