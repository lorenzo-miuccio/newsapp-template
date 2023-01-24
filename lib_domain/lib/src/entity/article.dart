import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {

  const Article._();

  const factory Article({required String title,
    required String author,
    required String description,
    required String text,
    required int readTime,
    required DateTime publishDate,
    required String url,
    required String? urlToImage,
    required String source,
    @Default(false) bool isSaved,
    @Default(false) bool isShared}) = _Article;

  @override
  bool operator ==(Object other) => other is Article && url == other.url;

  @override
  int get hashCode => url.hashCode;

}