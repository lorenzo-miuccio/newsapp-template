import 'package:json_annotation/json_annotation.dart';

part 'news_serializable.g.dart';

@JsonSerializable(createToJson: false)
class NewsSerializable {
  final List<ArticleSerializable> articles;
  final int totalResults;

  NewsSerializable({
    required this.articles,
    required this.totalResults,
  });

  factory NewsSerializable.fromJson(Map<String, dynamic> json) => _$NewsSerializableFromJson(json);
}

@JsonSerializable(createToJson: false)
class ArticleSerializable {
  final SourceSerializable source;
  @JsonKey(defaultValue: 'Anonymous')
  final String author;
  @JsonKey(defaultValue: '-')
  final String title;
  @JsonKey(defaultValue: '-')
  final String description;
  final String url;
  final String? urlToImage;
  final DateTime publishedAt;
  @JsonKey(defaultValue: '-')
  final String content;

  ArticleSerializable(
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content, {
    required this.source,
  });

  factory ArticleSerializable.fromJson(Map<String, dynamic> json) => _$ArticleSerializableFromJson(json);
}

@JsonSerializable(createToJson: false)
class SourceSerializable {
  final String name;

  SourceSerializable({
    required this.name,
  });

  factory SourceSerializable.fromJson(Map<String, dynamic> json) => _$SourceSerializableFromJson(json);
}
