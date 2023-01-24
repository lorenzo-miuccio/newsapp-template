import 'package:domain/src/entity/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_fetch_state.freezed.dart';

@freezed
class NewsFetchState with _$NewsFetchState {
  const factory NewsFetchState.idle() = _NewsIdleState;

  const factory NewsFetchState.hasData(
      {required List<Article> articles, required bool validity, required bool freshness}) = _NewsFetchDataState;

  const factory NewsFetchState.loading() = _NewsFetchLoadingState;

  const factory NewsFetchState.error({String? message}) = _NewsFetchError;

  const factory NewsFetchState.noConnectionError({String? message}) = _NewsFetchNoConnectionError;
}
