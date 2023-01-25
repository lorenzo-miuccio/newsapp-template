import 'package:async/async.dart';
import 'package:data/src/datasource/news_datasources.dart';
import 'package:data/src/mapping/news_mapping.dart';
import 'package:data/src/model/article_floor.dart';
import 'package:data/src/model/exceptions.dart';
import 'package:data/src/serializable/news_serializable.dart';
import 'package:domain/domain.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDatasource _newsRemoteDatasource;
  final NewsLocalDatasource _newsLocalDatasource;
  CancelableOperation<Either<DataError, List<Article>>>? _cancelableSearchOperation;

  NewsRepositoryImpl(
      {required NewsRemoteDatasource newsRemoteDatasource, required NewsLocalDatasource newsLocalDatasource})
      : _newsRemoteDatasource = newsRemoteDatasource,
        _newsLocalDatasource = newsLocalDatasource;

  @override
  Future<Either<DataError, List<Article>>> searchNewsByCharacters(String characters, {required String lan}) {
    _cancelableSearchOperation?.cancel();
    _cancelableSearchOperation = CancelableOperation.fromFuture(
        mapRemoteFetchToEither(_newsRemoteDatasource.searchNewsByCharacters(characters, lan: lan)));
    return _cancelableSearchOperation!.value;
  }

  @override
  Future<Either<DataError, List<Article>>> getRemoteTopNews({required String country}) =>
      mapRemoteFetchToEither(_newsRemoteDatasource.getTopNews(country: country), isTop: true);

  @override
  Future<Either<DataError, List<Article>>> getLocalNews({required bool isTop}) {
    _cancelableSearchOperation?.cancel();
    return mapLocalFetchToEither(_newsLocalDatasource.findRecentArticles(isTop: isTop));
  }

  @override
  Future<Either<DataError, List<Article>>> getRemoteEverythingNews() {
    _cancelableSearchOperation?.cancel();
    return mapRemoteFetchToEither(_newsRemoteDatasource.getEverythingArticles());
  }

  @override
  Future<DateTime?> getLastRemoteFetch() => _newsLocalDatasource.getLastFetchDate();

  @override
  Future<void> saveRecentNews(List<Article> remoteArticles, {required bool isTop}) async {
    List<ArticleDb> recentSavedArticles = await _newsLocalDatasource.findRecentSavedArticles(isTop: isTop);

    await _newsLocalDatasource.deleteRecentArticles(isTop: isTop);

    for (int i = 0; i < remoteArticles.length; i++) {
      for (var savedArticle in recentSavedArticles) {
        if (remoteArticles[i].url == savedArticle.url) {
          remoteArticles[i] =
              remoteArticles[i].copyWith(isSaved: savedArticle.isSaved, isShared: savedArticle.isShared);
        }
      }
    }

    await _newsLocalDatasource.insertArticles(remoteArticles.map((e) => e.toArticleDb(isTop: isTop)).toList());
  }

  @override
  Future<Either<DataError, List<Article>>> getSavedOrSharedArticles({required bool isSaved}) =>
      mapLocalFetchToEither(_newsLocalDatasource.findSavedOrSharedArticles(isSaved: isSaved));

  @override
  Future<void> updateLocalArticle(Article article) async {
    ArticleDb? foundArticle = await _newsLocalDatasource.findArticleByUrl(article.url);

    if (foundArticle == null) {
      _newsLocalDatasource.update(article.toArticleDb(
          lastFetch: DateTime.fromMillisecondsSinceEpoch(0), isTop: false)); // article da trovato tramite ricerca
      return;
    }

    foundArticle = foundArticle.copyWith(isSaved: article.isSaved, isShared: article.isShared);

    await _newsLocalDatasource.update(foundArticle);
  }
}

extension _ExceptionToDataErrorExtension on Object {
  DataError toDataError() {
    switch (runtimeType) {
      case NoConnectionException:
        return const DataError.noConnection();
      case HttpStatusException:
        return DataError.httpStatus(message: toString());
      case DatabaseException:
        return DataError.db(message: toString());
      default:
        return DataError.generic(message: toString());
    }
  }
}

extension _MapDatasourceResultsToEither on NewsRepositoryImpl {
  Future<Either<DataError, List<Article>>> mapRemoteFetchToEither(Future<NewsSerializable> remoteNews,
          {bool isTop = false}) =>
      remoteNews
          .then<Either<DataError, List<Article>>>((value) => Right(value.toArticlesList()))
          .catchError((Object e, s) => Left<DataError, List<Article>>(e.toDataError()));

  Future<Either<DataError, List<Article>>> mapLocalFetchToEither(Future<List<ArticleDb>> localNews) => localNews
      .then<Either<DataError, List<Article>>>((value) => Right(value.map((e) => e.toArticleEntity()).toList()))
      .catchError((Object e) => Left<DataError, List<Article>>(e.toDataError()));
}
