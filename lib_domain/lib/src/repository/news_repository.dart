import 'package:domain/src/entity/article.dart';
import 'package:domain/src/entity/either.dart';
import 'package:domain/src/error/data_error.dart';

abstract class NewsRepository {

  Future<Either<DataError, List<Article>>> searchNewsByCharacters(String characters, {required String lan});

  Future<Either<DataError, List<Article>>> getRemoteTopNews({required String country});

  Future<Either<DataError, List<Article>>> getLocalNews({required bool isTop});

  Future<Either<DataError, List<Article>>> getRemoteEverythingNews();

  Future<Either<DataError, List<Article>>> getSavedOrSharedArticles({required bool isSaved});

  Future<DateTime?> getLastRemoteFetch();

  Future<void> saveRecentNews(List<Article> remoteArticles, {required bool isTop});

  Future<void> updateLocalArticle(Article article);
}