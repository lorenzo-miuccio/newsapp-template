import 'package:domain/src/entity/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_actions.freezed.dart';

@freezed
class NewsActions with _$NewsActions {
  const factory NewsActions.loadNewsAction(
      {required bool top, @Default(false) bool forceRemoteFetch, String? country}) = _LoadNewsAction;

  const factory NewsActions.loadingNewsAction({required bool top}) = _LoadingNewsAction;

  const factory NewsActions.loadedNewsAction(
      {required bool top,
      required List<Article> articles,
      required bool validity,
      required bool freshness}) = _LoadedNewsActions;

  const factory NewsActions.error({String? message, required bool top}) = _ErrorNewsActions;
}
