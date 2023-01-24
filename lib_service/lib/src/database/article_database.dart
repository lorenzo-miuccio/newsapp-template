// database.dart

import 'dart:async';

import 'package:data/data.dart';
import 'package:floor/floor.dart';
import 'package:service/src/database/article_dao.dart';
import 'package:service/src/database/converter/datetime_converter.dart';


// ignore: depend_on_referenced_packages
import 'package:sqflite/sqflite.dart' as sqflite;

part 'article_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [ArticleDb])
@TypeConverters([DateTimeConverter])
abstract class NewsDatabase extends FloorDatabase {
  NewsDao get newsDao;
}
