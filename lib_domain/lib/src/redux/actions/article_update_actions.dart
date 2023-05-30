import 'package:domain/src/entity/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_update_actions.freezed.dart';

@freezed
class UpdateArticleActions with _$UpdateArticleActions {
  const factory UpdateArticleActions.saveOrUnSave(Article article) = SaveOrUnSaveArticleAction;
  const factory UpdateArticleActions.shareOrUnShare(Article article) = ShareOrUnShareArticleAction;

  const factory UpdateArticleActions.saveStatusChanged({required bool status}) = SaveStatusAction;
  const factory UpdateArticleActions.shareStatusChanged({required bool status}) = ShareStatusAction;

  const factory UpdateArticleActions.error({String? message}) = ErrorUpdateAction;
}