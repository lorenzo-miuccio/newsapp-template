import 'package:domain/src/entity/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'topnews_actions.freezed.dart';

@freezed
class TopNewsActions with _$TopNewsActions {
  const factory TopNewsActions.loadTopNewsAction({@Default(false) bool forceRemoteFetch}) = _LoadTopNewsAction;
  const factory TopNewsActions.loadedTopNewsAction(List<Article> topNews) = _LoadedTopNewsActions;
  const factory TopNewsActions.error(List<Article> topNews) = _LoadedTopNewsActions;
}