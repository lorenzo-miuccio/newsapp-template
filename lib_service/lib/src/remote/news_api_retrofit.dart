import 'package:data/data.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:service/src/remote/remote_config.dart';

part 'news_api_retrofit.g.dart';

@RestApi(baseUrl: "https://newsapi.org/v2")
abstract class NewsApi {
factory NewsApi(Dio dio, {String baseUrl}) = _NewsApi;

  @GET("/top-headlines")
  Future<NewsSerializable> GETTopHeadLines({
    @Query('country') String country = 'it',
    @Query('pageSize') int pageSize = 10,
    @Query('apiKey') String apiKey = Config.API_KEY,
  });

  @GET("/everything")
  Future<NewsSerializable> GETArticlesByCustomQuery({
    @Query('q') required String characters,
    @Query('language') String language = 'en',
    @Query('apiKey') String apiKey = Config.API_KEY,
  });

  @GET("/everything?apiKey=${Config.API_KEY}")
  Future<NewsSerializable> GETEverythingArticles({
    @Query('q') String characters = 'flutter android iOS',
    @Query('language') String language = 'en',
  });
}
