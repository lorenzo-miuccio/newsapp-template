library dependencies;

import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:newsapp_template/config/env.dart';
import 'package:service/service.dart';

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
