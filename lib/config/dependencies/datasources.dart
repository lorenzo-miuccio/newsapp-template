part of dependencies;

/// This extension of GetIt registers remote and local datasource-s depending on [Env].
/// The single [Dio] client is created starting from [Env.baseUrl], to be used in every remote datasource.
extension DataSourcesRegistryExtension on GetIt {
  Future<void> registerDataSources(Env env) async {
    /// Startup dependencies
    final client = Dio(
      BaseOptions(
        connectTimeout: 10000,
        receiveTimeout: 10000,
      ),
    );

    registerSingleton<SharedPreferences>(await SharedPreferences.getInstance());

    /// DataSources
    registerLazySingleton<NewsRemoteDatasource>(
        () => NewsRemoteDatasourceImpl(NewsApi(client, baseUrl: env.baseUrl)));

    final dao = await NewsSqliteDatabase.getDao();

    registerLazySingleton<NewsLocalDatasource>(
        () => NewsLocalDatasourceImpl(articleDao: dao));

    registerLazySingleton<KeyValueService>(
            () => KeyValueServiceImpl(get()));
  }
}
