import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_update_state.freezed.dart';

@freezed
class ArticleUpdateState with _$ArticleUpdateState {

  const factory ArticleUpdateState.idle() = _ArticleIdleState;

  const factory ArticleUpdateState.savedStatus(bool status) = _ArticleSavedState;

  const factory ArticleUpdateState.sharedStatus(bool status) = _ArticleSharedState;

  const factory ArticleUpdateState.error({String? message}) = _ArticleErrorState;
}