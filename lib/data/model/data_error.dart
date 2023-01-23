import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/domain/entity/article.dart';

part 'data_error.freezed.dart';

@freezed
class DataError with _$DataError {
  const DataError._();

  const factory DataError.expiredArticles({required List<Article> articles}) = _ExpiredArticlesDataError;

  const factory DataError.httpStatus({String? message}) = _HttpStatusDataError;

  const factory DataError.noConnection() = _NoConnectionDataError;

  const factory DataError.generic({String? message}) = _GenericDataError;

  const factory DataError.db({String? message}) = _DatabaseError;
}
