import 'package:data/src/model/converter/date_time_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article_floor.g.dart';

@JsonSerializable(explicitToJson: true)
class ArticleDb {
  final String url;
  final String title;
  final String author;
  final String description;
  final String text;

  @JsonKey(name: 'publish_date')
  @EpochDateTimeConverter()
  final DateTime publishDate;

  @JsonKey(name: 'read_time')
  final int readTime;
  @JsonKey(name: 'url_to_image')
  final String? urlToImage;
  final String source;

  @BooleanConverter()
  @JsonKey(name: 'is_shared')
  final bool isShared;

  @BooleanConverter()
  @JsonKey(name: 'is_saved')
  final bool isSaved;

  @BooleanConverter()
  @JsonKey(name: 'is_top')
  final bool isTopHead;

  @JsonKey(name: 'last_fetch_date')
  @EpochDateTimeConverter()
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
  });

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
