import 'package:data/data.dart';
import 'package:dio/dio.dart';

extension CatchApiRequestErrorsExtension<T> on Future<T> {
  Future<T> catchApiRequestErrors() => catchError((e, s) {
        switch (e.runtimeType) {
          case DioError:
            e = e as DioError;
            if (e.type == DioErrorType.badResponse) {
              final res = e.response;
              throw HttpStatusException('${res?.statusCode}');
            } else {
              throw NoConnectionException(e.toString());
            }
          default:
            throw Exception(e.toString());
        }
      });

  Future<T> catchDbOperationsErrors() => catchError((e, s) {
        throw DatabaseException(e.toString());
      });
}
