import 'package:news_app/data/model/article_floor.dart';

abstract class NewsLocalDatasource {
  Future<void> insertArticles(List<ArticleDb> articles);

  Future<DateTime?> getLastFetchDate();

  Future<List<ArticleDb>> findSavedOrSharedArticles({required bool isSaved});

  Future<void> update(ArticleDb article);


  Future<void> deleteArticles(List<ArticleDb> articles);

  Future<List<ArticleDb>> findRecentArticles({required bool isTop});

  Future<ArticleDb?> findArticleByUrl(String url);

  Future<void> deleteRecentArticles({required bool isTop});

  Future<List<ArticleDb>> findRecentSavedArticles({required bool isTop});
}