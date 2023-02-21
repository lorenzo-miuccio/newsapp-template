// database.dart

import 'package:path/path.dart';
import 'package:service/service.dart';
import 'package:sqflite/sqflite.dart';

class NewsSqliteDatabase {

  NewsSqliteDatabase._();

  static Future<NewsDao> getDao() async => NewsDao(await _openDatabase());

  static Future<Database> _openDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'news_database.db'),
      version: 1,
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        return db.execute(
          '''CREATE TABLE articles (url TEXT PRIMARY KEY NOT NULL, title TEXT, author TEXT,
         description TEXT, text TEXT, publish_date INTEGER, read_time INTEGER, url_to_image TEXT,
         source TEXT, is_shared INTEGER, is_saved INTEGER, is_top INTEGER, last_fetch_date INTEGER)''',
        );
      },
    );
  }
}
