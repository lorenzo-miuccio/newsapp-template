// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_floor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDb _$ArticleDbFromJson(Map<String, dynamic> json) => ArticleDb(
      title: json['title'] as String,
      author: json['author'] as String,
      description: json['description'] as String,
      text: json['text'] as String,
      publishDate: DateTime.parse(json['publishDate'] as String),
      url: json['url'] as String,
      readTime: json['readTime'] as int,
      urlToImage: json['urlToImage'] as String?,
      source: json['source'] as String,
      isShared: json['isShared'] as bool,
      isSaved: json['isSaved'] as bool,
      isTopHead: json['isTopHead'] as bool,
      lastFetchDate: DateTime.parse(json['lastFetchDate'] as String),
    );

Map<String, dynamic> _$ArticleDbToJson(ArticleDb instance) => <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'text': instance.text,
      'publishDate': instance.publishDate.toIso8601String(),
      'readTime': instance.readTime,
      'urlToImage': instance.urlToImage,
      'source': instance.source,
      'isShared': instance.isShared,
      'isSaved': instance.isSaved,
      'isTopHead': instance.isTopHead,
      'lastFetchDate': instance.lastFetchDate.toIso8601String(),
    };
