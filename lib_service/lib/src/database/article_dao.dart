import 'package:data/data.dart';
import 'package:floor/floor.dart';

@dao
abstract class NewsDao {

  @Query('SELECT * FROM articles WHERE url = :url')
  Future<ArticleDb?> findArticleByUrl(String url);

  @Query('SELECT * FROM articles WHERE isSaved = 1')
  Future<List<ArticleDb>> findSavedArticles();

  @Query('SELECT * FROM articles WHERE isShared = 1')
  Future<List<ArticleDb>> findSharedArticles();

  @Query('SELECT * FROM articles WHERE isTopHead = :isTop AND lastFetchDate >= (SELECT IFNULL(MAX(lastFetchDate), 3000) FROM articles WHERE isTopHead = :isTop)')
  Future<List<ArticleDb>> findRecentArticlesBySection(bool isTop);

  @Query('SELECT IFNULL(MAX(lastFetchDate), 3000) FROM articles')
  Future<int?> findLastFetch();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertArticles(List<ArticleDb> articles);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateArticle(ArticleDb article);

  @delete
  Future<void> deleteArticles(List<ArticleDb> articles);

  @Query('DELETE FROM articles WHERE isSaved = 0 AND isShared = 0 AND isTopHead = :isTop')
  Future<void> deleteRecentArticles(bool isTop);

  @Query('SELECT * FROM articles WHERE isTopHead = :isTop AND (isSaved = 1 OR isShared = 1);')
  Future<List<ArticleDb>> findRecentSavedArticles(bool isTop);
}