// database.dart

import 'dart:async';

import 'package:floor/floor.dart';
import 'package:news_app/data/model/article_floor.dart';
import 'package:news_app/service/database/article_dao.dart';
import 'package:news_app/service/database/converter/datetime_converter.dart';

// ignore: depend_on_referenced_packages
import 'package:sqflite/sqflite.dart' as sqflite;

part 'article_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [ArticleDb])
@TypeConverters([DateTimeConverter])
abstract class NewsDatabase extends FloorDatabase {
  NewsDao get newsDao;
}
