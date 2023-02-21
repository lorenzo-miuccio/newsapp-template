// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_db.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDb _$ArticleDbFromJson(Map<String, dynamic> json) => ArticleDb(
      title: json['title'] as String,
      author: json['author'] as String,
      description: json['description'] as String,
      text: json['text'] as String,
      publishDate:
          const EpochDateTimeConverter().fromJson(json['publish_date'] as int),
      url: json['url'] as String,
      readTime: json['read_time'] as int,
      urlToImage: json['url_to_image'] as String?,
      source: json['source'] as String,
      isShared: const BooleanConverter().fromJson(json['is_shared'] as int),
      isSaved: const BooleanConverter().fromJson(json['is_saved'] as int),
      isTopHead: const BooleanConverter().fromJson(json['is_top'] as int),
      lastFetchDate: const EpochDateTimeConverter()
          .fromJson(json['last_fetch_date'] as int),
    );

Map<String, dynamic> _$ArticleDbToJson(ArticleDb instance) => <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'text': instance.text,
      'publish_date':
          const EpochDateTimeConverter().toJson(instance.publishDate),
      'read_time': instance.readTime,
      'url_to_image': instance.urlToImage,
      'source': instance.source,
      'is_shared': const BooleanConverter().toJson(instance.isShared),
      'is_saved': const BooleanConverter().toJson(instance.isSaved),
      'is_top': const BooleanConverter().toJson(instance.isTopHead),
      'last_fetch_date':
          const EpochDateTimeConverter().toJson(instance.lastFetchDate),
    };
