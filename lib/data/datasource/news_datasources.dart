import 'package:news_app/data/serializable/news_serializable.dart';

abstract class NewsRemoteDatasource {
  Future<NewsSerializable> getTopNews({required String country});

  Future<NewsSerializable> searchNewsByCharacters(String characters, {required String lan});

  Future<NewsSerializable> getEverythingArticles();
}
