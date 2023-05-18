import 'package:data/data.dart';
import 'package:sqflite/sqflite.dart';

const String tableName = 'articles';

class NewsDao {
  final Database _db;

  const NewsDao(this._db);

  Future<ArticleDb?> findArticleByUrl(String url) async =>
      ArticleDb.fromJson((await _db.query(tableName, where: 'url = ?', whereArgs: [url]))[0]);

  // @Query('SELECT * FROM articles WHERE isSaved = 1')
  Future<List<ArticleDb>> findSavedArticles() => _mapToEntitiesList(_db.query(tableName, where: 'is_saved = 1'));

  // @Query('SELECT * FROM articles WHERE isShared = 1')
  Future<List<ArticleDb>> findSharedArticles() => _mapToEntitiesList(_db.query(tableName, where: 'is_shared = 1'));

  Future<List<ArticleDb>> findRecentArticlesBySection(bool isTop) => _mapToEntitiesList(_db.rawQuery(
      'SELECT * FROM articles WHERE is_top = ? AND last_fetch_date >= (SELECT IFNULL(MAX(last_fetch_date), 3000) FROM articles WHERE is_top = ?)',
      [isTop ? 1 : 0]));

  Future<int> findLastFetch() async =>
      (await _db.rawQuery('SELECT IFNULL(MAX(last_fetch_date), 3000) AS last FROM articles'))[0]['last'] as int;

  Future<void> insertArticles(List<ArticleDb> articles) async {
    Batch batch = _db.batch();

    for (var article in articles) {
      batch.insert(tableName, article.toJson(), conflictAlgorithm: ConflictAlgorithm.replace);
    }
    await batch.commit();
  }

  Future<void> updateArticle(ArticleDb article) async => await _db
          .update(tableName, article.toJson(),
              where: 'url = ?', whereArgs: [article.url], conflictAlgorithm: ConflictAlgorithm.replace);


  Future<void> deleteArticles(List<ArticleDb> articles) async {
    Batch batch = _db.batch();

    for (var article in articles) {
      batch.delete(tableName, where: 'url = ?', whereArgs: [article.url]);
    }
    await batch.commit();
  }

  Future<void> deleteRecentArticles(bool isTop) =>
      _db.rawDelete('DELETE FROM articles WHERE is_saved = 0 AND is_shared = 0 AND is_top = ?', [isTop ? 1 : 0]);

  Future<List<ArticleDb>> findRecentSavedArticles(bool isTop) => _mapToEntitiesList(
      _db.query(tableName, where: 'is_top = ? AND (is_saved = 1 OR is_shared = 1)', whereArgs: [isTop ? 1 : 0]));

  Future<List<ArticleDb>> _mapToEntitiesList(Future<List<Map<String, Object?>>> dbList) {
    return dbList.then((list) => list.map((e) => ArticleDb.fromJson(e)).toList());
  }
}
