import 'package:news_app/data/model/data_error.dart';
import 'package:news_app/domain/entity/article.dart';
import 'package:news_app/domain/entity/either.dart';

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