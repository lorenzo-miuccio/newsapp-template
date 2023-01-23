import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article_floor.g.dart';

@JsonSerializable(explicitToJson: true)
@Entity(tableName: 'articles')
class ArticleDb {
  @primaryKey
  final String url;
  final String title;
  final String author;
  final String description;
  final String text;
  final DateTime publishDate;
  final int readTime;
  final String? urlToImage;
  final String source;
  final bool isShared;
  final bool isSaved;
  final bool isTopHead;
  final DateTime lastFetchDate;

  //final Uint8List image;

  ArticleDb({
    required this.title,
    required this.author,
    required this.description,
    required this.text,
    required this.publishDate,
    required this.url,
    required this.readTime,
    required this.urlToImage,
    required this.source,
    required this.isShared,
    required this.isSaved,
    required this.isTopHead,
    required this.lastFetchDate,
  }
      // this.image,
      );

  factory ArticleDb.fromJson(Map<String, dynamic> json) => _$ArticleDbFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleDbToJson(this);

  ArticleDb copyWith({
    required bool isShared,
    required bool isSaved,
  }) {
    var result = toJson();
    result['isShared'] = isShared;
    result['isSaved'] = isSaved;
    return ArticleDb.fromJson(result);
  }

  @override
  bool operator ==(Object other) => other is ArticleDb && url == other.url;

  @override
  int get hashCode => url.hashCode;
}
