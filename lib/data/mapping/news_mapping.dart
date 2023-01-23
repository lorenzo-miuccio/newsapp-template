import 'package:flutter/cupertino.dart';
import 'package:news_app/data/model/article_floor.dart';
import 'package:news_app/data/serializable/news_serializable.dart';
import 'package:news_app/domain/entity/article.dart';

extension NewsMappingExtension on NewsSerializable {
  List<Article> toArticlesList() => articles.map((element) {
        final s = element.content.split('[');
        final String lastWord = s.last;
        int readTimeInMin = 0;
        try {
          readTimeInMin = (int.parse(lastWord.substring(1, lastWord.indexOf(' '))) / 500).round();
        } catch (e) {
          debugPrint(e.toString());
        }

        return Article(
          title: element.title,
          author: element.author,
          description: element.description,
          text: element.content,
          publishDate: element.publishedAt,
          url: element.url,
          urlToImage: element.urlToImage,
          source: element.source.name,
          readTime: readTimeInMin,
        );
      }).toList();
}

extension ArticleDbMapping on ArticleDb {
  Article toArticleEntity() => Article(
        title: title,
        author: author,
        description: description,
        text: text,
        readTime: readTime,
        publishDate: publishDate,
        url: url,
        urlToImage: urlToImage,
        source: source,
        isSaved: isSaved,
        isShared: isShared,
      );
}

extension ArticleToArticleDbExtension on Article {
  ArticleDb toArticleDb({required bool isTop, DateTime? lastFetch}) => ArticleDb(
        title: title,
        author: author,
        description: description,
        text: text,
        publishDate: publishDate,
        url: url,
        readTime: readTime,
        urlToImage: urlToImage,
        source: source,
        isShared: isShared,
        isSaved: isSaved,
        isTopHead: isTop,
        lastFetchDate: lastFetch ?? DateTime.now().round(),
      );
}

extension _RoundToSeconds on DateTime {
  DateTime round({Duration delta = const Duration(seconds: 1)}) =>
      DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch - millisecondsSinceEpoch % delta.inMilliseconds);
}
