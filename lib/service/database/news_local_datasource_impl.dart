import 'package:news_app/data/model/article_floor.dart';
import 'package:news_app/data/datasource/news_local_datasource.dart';
import 'package:news_app/data/model/exceptions.dart';
import 'package:news_app/service/database/article_dao.dart';

class NewsLocalDatasourceImpl implements NewsLocalDatasource {
  final NewsDao _articleDao;

  NewsLocalDatasourceImpl({required articleDao}) : _articleDao = articleDao;

  @override
  Future<void> insertArticles(List<ArticleDb> articles) => _articleDao.insertArticles(articles).catchDbError();

  @override
  Future<void> update(ArticleDb article) => _articleDao.updateArticle(article).catchDbError();

  @override
  Future<void> deleteArticles(List<ArticleDb> articles) => _articleDao.deleteArticles(articles).catchDbError();

  @override
  Future<List<ArticleDb>> findRecentArticles({required bool isTop}) =>
      _articleDao.findRecentArticlesBySection(isTop).catchDbError();

  @override
  Future<DateTime?> getLastFetchDate() => _articleDao
      .findLastFetch()
      .then((value) => value != null ? DateTime.fromMillisecondsSinceEpoch(value) : null)
      .catchDbError();

  @override
  Future<List<ArticleDb>> findSavedOrSharedArticles({required bool isSaved}) =>
      isSaved ? _articleDao.findSavedArticles().catchDbError() : _articleDao.findSharedArticles().catchDbError();

  @override
  Future<ArticleDb?> findArticleByUrl(String url) => _articleDao.findArticleByUrl(url).catchDbError();

  @override
  Future<void> deleteRecentArticles({required bool isTop}) => _articleDao.deleteRecentArticles(isTop).catchDbError();

  @override
  Future<List<ArticleDb>> findRecentSavedArticles({required bool isTop}) =>
      _articleDao.findRecentSavedArticles(isTop).catchDbError();
}

extension _CatchDatabaseErrorExtension<T> on Future<T> {
  Future<T> catchDbError() => catchError((e) => throw DatabaseException(e.toString()));
}
