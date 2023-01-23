library dependencies;

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:dio/dio.dart';
import 'package:news_app/data/datasource/news_datasources.dart';
import 'package:news_app/data/datasource/news_local_datasource.dart';
import 'package:news_app/data/key_value_service.dart';
import 'package:news_app/data/repository/language_repository_impl.dart';
import 'package:news_app/data/repository/news_repository_impl.dart';
import 'package:news_app/domain/repository/language_repository.dart';
import 'package:news_app/domain/repository/news_repository.dart';
import 'package:news_app/presentation/blocs/locale_bloc.dart';
import 'package:news_app/presentation/blocs/news_fetch/everything_news_bloc.dart';
import 'package:news_app/presentation/blocs/news_fetch/saved_shared_news_bloc.dart';
import 'package:news_app/presentation/blocs/news_fetch/top_news_bloc.dart';
import 'package:news_app/presentation/blocs/update_article/update_article_bloc.dart';
import 'package:news_app/presentation/config/env.dart';
import 'package:news_app/service/database/article_database.dart';
import 'package:news_app/service/database/news_local_datasource_impl.dart';
import 'package:news_app/service/key_value_service_impl.dart';
import 'package:news_app/service/remote/news_api_retrofit.dart';
import 'package:news_app/service/remote/news_remote_datasource_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'datasources.dart';
part 'domain.dart';
part 'presentation.dart';

/// Convenience method
T readDR<T extends Object>() => DependencyRegistry.read();

/// Access and register dependencies with DependencyRegistry
/// This class is an interface to the service locator and makes us able to replace it without making changes to other files.
class DependencyRegistry {
  static GetIt get _getIt => GetIt.instance;

  static T read<T extends Object>() => _getIt.get();

  static Future<void> registerDependencies(Env env) {
    /// Environment object is registered immediately.
    _getIt.registerSingleton(env);

    /// Register dependencies in parallel since every dependency is registered lazily.
    /// Every dependency registration method is a [GetIt] extension.
    /// Remember to register factories or lazy singletons, otherwise a synchronized dependency creation might crash.
    /// Datasources and repositories should be created as lazy single instances.
    /// Use-cases and blocs should be recreated everytime, provide blocs in the right scope keep them working depending on the widget tree and be able to reach
    /// them only from widgets that are supposed to use them.
    return Future.wait<void>([
      _getIt.registerDataSources(env),
      _getIt.registerRepositories(),
      _getIt.registerBlocs(),
    ]);
  }
}
