import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_update_actions.freezed.dart';

@freezed
class UpdateArticleActions with _$UpdateArticleActions {
  const factory UpdateArticleActions.saveOrUnSave({required bool save}) = SaveOrUnSaveArticleAction;
  const factory UpdateArticleActions.shareOrUnShare({required bool share}) = ShareOrUnShareArticleAction;
  const factory UpdateArticleActions.error({String? message}) = ErrorUpdateAction;
}