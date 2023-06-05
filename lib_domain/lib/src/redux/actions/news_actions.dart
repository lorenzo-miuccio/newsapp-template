import 'package:domain/src/entity/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_actions.freezed.dart';

@freezed
class NewsActions with _$NewsActions {
  const factory NewsActions.loadNewsAction(
      {required bool top, @Default(false) bool forceRemoteFetch, String? country}) = LoadNewsAction;

  const factory NewsActions.loadingNewsAction({required bool top}) = LoadingNewsAction;

  const factory NewsActions.searchNews({required String characters, required String lan}) = SearchNewsAction;

  const factory NewsActions.loadedNewsAction(
      {required bool top,
      required List<Article> articles,
      required bool validity,
      required bool freshness}) = LoadedNewsAction;

  const factory NewsActions.error({String? message, required bool top}) = ErrorNewsAction;
}
