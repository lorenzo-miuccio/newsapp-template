import 'package:dio/dio.dart';
import 'package:news_app/data/serializable/news_serializable.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api_retrofit.g.dart';

@RestApi(baseUrl: "https://newsapi.org/v2")
abstract class NewsApi {
factory NewsApi(Dio dio, {String baseUrl}) = _NewsApi;

  @GET("/top-headlines")
  Future<NewsSerializable> GETTopHeadLines({
    @Query('country') String country = 'it',
    @Query('pageSize') int pageSize = 10,
    @Query('apiKey') String apiKey = 'ad972c054b064e9ca2f1a0b8bda95e34',
  });

  @GET("/everything")
  Future<NewsSerializable> GETArticlesByCustomQuery({
    @Query('q') required String characters,
    @Query('language') String language = 'en',
    @Query('apiKey') String apiKey = 'ad972c054b064e9ca2f1a0b8bda95e34',
  });

  @GET("/everything?apiKey=ad972c054b064e9ca2f1a0b8bda95e34")
  Future<NewsSerializable> GETEverythingArticles({
    @Query('q') String characters = 'flutter android iOS',
    @Query('language') String language = 'en',
  });
}
