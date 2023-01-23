// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_serializable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsSerializable _$NewsSerializableFromJson(Map<String, dynamic> json) =>
    NewsSerializable(
      articles: (json['articles'] as List<dynamic>)
          .map((e) => ArticleSerializable.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalResults: json['totalResults'] as int,
    );

ArticleSerializable _$ArticleSerializableFromJson(Map<String, dynamic> json) =>
    ArticleSerializable(
      json['author'] as String? ?? 'Anonymous',
      json['title'] as String? ?? '-',
      json['description'] as String? ?? '-',
      json['url'] as String,
      json['urlToImage'] as String?,
      DateTime.parse(json['publishedAt'] as String),
      json['content'] as String? ?? '-',
      source:
          SourceSerializable.fromJson(json['source'] as Map<String, dynamic>),
    );

SourceSerializable _$SourceSerializableFromJson(Map<String, dynamic> json) =>
    SourceSerializable(
      name: json['name'] as String,
    );
