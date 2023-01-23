part of dependencies;

/// This extension of GetIt registers repositories implementations to the domain layer.
extension RepositoriesRegistryExtension on GetIt {
  Future<void> registerRepositories() async {
    registerLazySingleton<NewsRepository>(() => NewsRepositoryImpl(newsRemoteDatasource: get(), newsLocalDatasource: get()));
    registerLazySingleton<LanguageRepository>(() => LanguageRepositoryImpl(get()));
  }
}