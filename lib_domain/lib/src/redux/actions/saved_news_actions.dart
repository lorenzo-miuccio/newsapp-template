import 'package:domain/src/entity/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_news_actions.freezed.dart';

@freezed
class SavedNewsActions with _$SavedNewsActions {
  const factory SavedNewsActions.loadNewsAction(
      {@Default(false) bool shared}) = LoadSavedNewsAction;

  const factory SavedNewsActions.loadingNewsAction({@Default(false) bool shared}) = LoadingSavedNewsAction;

  const factory SavedNewsActions.loadedNewsAction(
      {@Default(false) bool shared,
        required List<Article> articles}) = LoadedSavedNewsAction;

  const factory SavedNewsActions.error({String? message, required bool shared}) = ErrorSavedNewsAction;
}
