// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Article> articles) expiredArticles,
    required TResult Function(String? message) httpStatus,
    required TResult Function() noConnection,
    required TResult Function(String? message) generic,
    required TResult Function(String? message) db,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Article> articles)? expiredArticles,
    TResult? Function(String? message)? httpStatus,
    TResult? Function()? noConnection,
    TResult? Function(String? message)? generic,
    TResult? Function(String? message)? db,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Article> articles)? expiredArticles,
    TResult Function(String? message)? httpStatus,
    TResult Function()? noConnection,
    TResult Function(String? message)? generic,
    TResult Function(String? message)? db,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpiredArticlesDataError value) expiredArticles,
    required TResult Function(_HttpStatusDataError value) httpStatus,
    required TResult Function(_NoConnectionDataError value) noConnection,
    required TResult Function(_GenericDataError value) generic,
    required TResult Function(_DatabaseError value) db,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpiredArticlesDataError value)? expiredArticles,
    TResult? Function(_HttpStatusDataError value)? httpStatus,
    TResult? Function(_NoConnectionDataError value)? noConnection,
    TResult? Function(_GenericDataError value)? generic,
    TResult? Function(_DatabaseError value)? db,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpiredArticlesDataError value)? expiredArticles,
    TResult Function(_HttpStatusDataError value)? httpStatus,
    TResult Function(_NoConnectionDataError value)? noConnection,
    TResult Function(_GenericDataError value)? generic,
    TResult Function(_DatabaseError value)? db,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataErrorCopyWith<$Res> {
  factory $DataErrorCopyWith(DataError value, $Res Function(DataError) then) =
      _$DataErrorCopyWithImpl<$Res, DataError>;
}

/// @nodoc
class _$DataErrorCopyWithImpl<$Res, $Val extends DataError>
    implements $DataErrorCopyWith<$Res> {
  _$DataErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ExpiredArticlesDataErrorCopyWith<$Res> {
  factory _$$_ExpiredArticlesDataErrorCopyWith(
          _$_ExpiredArticlesDataError value,
          $Res Function(_$_ExpiredArticlesDataError) then) =
      __$$_ExpiredArticlesDataErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article> articles});
}

/// @nodoc
class __$$_ExpiredArticlesDataErrorCopyWithImpl<$Res>
    extends _$DataErrorCopyWithImpl<$Res, _$_ExpiredArticlesDataError>
    implements _$$_ExpiredArticlesDataErrorCopyWith<$Res> {
  __$$_ExpiredArticlesDataErrorCopyWithImpl(_$_ExpiredArticlesDataError _value,
      $Res Function(_$_ExpiredArticlesDataError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$_ExpiredArticlesDataError(
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$_ExpiredArticlesDataError extends _ExpiredArticlesDataError {
  const _$_ExpiredArticlesDataError({required final List<Article> articles})
      : _articles = articles,
        super._();

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'DataError.expiredArticles(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpiredArticlesDataError &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpiredArticlesDataErrorCopyWith<_$_ExpiredArticlesDataError>
      get copyWith => __$$_ExpiredArticlesDataErrorCopyWithImpl<
          _$_ExpiredArticlesDataError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Article> articles) expiredArticles,
    required TResult Function(String? message) httpStatus,
    required TResult Function() noConnection,
    required TResult Function(String? message) generic,
    required TResult Function(String? message) db,
  }) {
    return expiredArticles(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Article> articles)? expiredArticles,
    TResult? Function(String? message)? httpStatus,
    TResult? Function()? noConnection,
    TResult? Function(String? message)? generic,
    TResult? Function(String? message)? db,
  }) {
    return expiredArticles?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Article> articles)? expiredArticles,
    TResult Function(String? message)? httpStatus,
    TResult Function()? noConnection,
    TResult Function(String? message)? generic,
    TResult Function(String? message)? db,
    required TResult orElse(),
  }) {
    if (expiredArticles != null) {
      return expiredArticles(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpiredArticlesDataError value) expiredArticles,
    required TResult Function(_HttpStatusDataError value) httpStatus,
    required TResult Function(_NoConnectionDataError value) noConnection,
    required TResult Function(_GenericDataError value) generic,
    required TResult Function(_DatabaseError value) db,
  }) {
    return expiredArticles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpiredArticlesDataError value)? expiredArticles,
    TResult? Function(_HttpStatusDataError value)? httpStatus,
    TResult? Function(_NoConnectionDataError value)? noConnection,
    TResult? Function(_GenericDataError value)? generic,
    TResult? Function(_DatabaseError value)? db,
  }) {
    return expiredArticles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpiredArticlesDataError value)? expiredArticles,
    TResult Function(_HttpStatusDataError value)? httpStatus,
    TResult Function(_NoConnectionDataError value)? noConnection,
    TResult Function(_GenericDataError value)? generic,
    TResult Function(_DatabaseError value)? db,
    required TResult orElse(),
  }) {
    if (expiredArticles != null) {
      return expiredArticles(this);
    }
    return orElse();
  }
}

abstract class _ExpiredArticlesDataError extends DataError {
  const factory _ExpiredArticlesDataError(
      {required final List<Article> articles}) = _$_ExpiredArticlesDataError;
  const _ExpiredArticlesDataError._() : super._();

  List<Article> get articles;
  @JsonKey(ignore: true)
  _$$_ExpiredArticlesDataErrorCopyWith<_$_ExpiredArticlesDataError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HttpStatusDataErrorCopyWith<$Res> {
  factory _$$_HttpStatusDataErrorCopyWith(_$_HttpStatusDataError value,
          $Res Function(_$_HttpStatusDataError) then) =
      __$$_HttpStatusDataErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_HttpStatusDataErrorCopyWithImpl<$Res>
    extends _$DataErrorCopyWithImpl<$Res, _$_HttpStatusDataError>
    implements _$$_HttpStatusDataErrorCopyWith<$Res> {
  __$$_HttpStatusDataErrorCopyWithImpl(_$_HttpStatusDataError _value,
      $Res Function(_$_HttpStatusDataError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_HttpStatusDataError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HttpStatusDataError extends _HttpStatusDataError {
  const _$_HttpStatusDataError({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'DataError.httpStatus(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HttpStatusDataError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HttpStatusDataErrorCopyWith<_$_HttpStatusDataError> get copyWith =>
      __$$_HttpStatusDataErrorCopyWithImpl<_$_HttpStatusDataError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Article> articles) expiredArticles,
    required TResult Function(String? message) httpStatus,
    required TResult Function() noConnection,
    required TResult Function(String? message) generic,
    required TResult Function(String? message) db,
  }) {
    return httpStatus(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Article> articles)? expiredArticles,
    TResult? Function(String? message)? httpStatus,
    TResult? Function()? noConnection,
    TResult? Function(String? message)? generic,
    TResult? Function(String? message)? db,
  }) {
    return httpStatus?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Article> articles)? expiredArticles,
    TResult Function(String? message)? httpStatus,
    TResult Function()? noConnection,
    TResult Function(String? message)? generic,
    TResult Function(String? message)? db,
    required TResult orElse(),
  }) {
    if (httpStatus != null) {
      return httpStatus(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpiredArticlesDataError value) expiredArticles,
    required TResult Function(_HttpStatusDataError value) httpStatus,
    required TResult Function(_NoConnectionDataError value) noConnection,
    required TResult Function(_GenericDataError value) generic,
    required TResult Function(_DatabaseError value) db,
  }) {
    return httpStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpiredArticlesDataError value)? expiredArticles,
    TResult? Function(_HttpStatusDataError value)? httpStatus,
    TResult? Function(_NoConnectionDataError value)? noConnection,
    TResult? Function(_GenericDataError value)? generic,
    TResult? Function(_DatabaseError value)? db,
  }) {
    return httpStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpiredArticlesDataError value)? expiredArticles,
    TResult Function(_HttpStatusDataError value)? httpStatus,
    TResult Function(_NoConnectionDataError value)? noConnection,
    TResult Function(_GenericDataError value)? generic,
    TResult Function(_DatabaseError value)? db,
    required TResult orElse(),
  }) {
    if (httpStatus != null) {
      return httpStatus(this);
    }
    return orElse();
  }
}

abstract class _HttpStatusDataError extends DataError {
  const factory _HttpStatusDataError({final String? message}) =
      _$_HttpStatusDataError;
  const _HttpStatusDataError._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$_HttpStatusDataErrorCopyWith<_$_HttpStatusDataError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoConnectionDataErrorCopyWith<$Res> {
  factory _$$_NoConnectionDataErrorCopyWith(_$_NoConnectionDataError value,
          $Res Function(_$_NoConnectionDataError) then) =
      __$$_NoConnectionDataErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoConnectionDataErrorCopyWithImpl<$Res>
    extends _$DataErrorCopyWithImpl<$Res, _$_NoConnectionDataError>
    implements _$$_NoConnectionDataErrorCopyWith<$Res> {
  __$$_NoConnectionDataErrorCopyWithImpl(_$_NoConnectionDataError _value,
      $Res Function(_$_NoConnectionDataError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoConnectionDataError extends _NoConnectionDataError {
  const _$_NoConnectionDataError() : super._();

  @override
  String toString() {
    return 'DataError.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoConnectionDataError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Article> articles) expiredArticles,
    required TResult Function(String? message) httpStatus,
    required TResult Function() noConnection,
    required TResult Function(String? message) generic,
    required TResult Function(String? message) db,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Article> articles)? expiredArticles,
    TResult? Function(String? message)? httpStatus,
    TResult? Function()? noConnection,
    TResult? Function(String? message)? generic,
    TResult? Function(String? message)? db,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Article> articles)? expiredArticles,
    TResult Function(String? message)? httpStatus,
    TResult Function()? noConnection,
    TResult Function(String? message)? generic,
    TResult Function(String? message)? db,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpiredArticlesDataError value) expiredArticles,
    required TResult Function(_HttpStatusDataError value) httpStatus,
    required TResult Function(_NoConnectionDataError value) noConnection,
    required TResult Function(_GenericDataError value) generic,
    required TResult Function(_DatabaseError value) db,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpiredArticlesDataError value)? expiredArticles,
    TResult? Function(_HttpStatusDataError value)? httpStatus,
    TResult? Function(_NoConnectionDataError value)? noConnection,
    TResult? Function(_GenericDataError value)? generic,
    TResult? Function(_DatabaseError value)? db,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpiredArticlesDataError value)? expiredArticles,
    TResult Function(_HttpStatusDataError value)? httpStatus,
    TResult Function(_NoConnectionDataError value)? noConnection,
    TResult Function(_GenericDataError value)? generic,
    TResult Function(_DatabaseError value)? db,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnectionDataError extends DataError {
  const factory _NoConnectionDataError() = _$_NoConnectionDataError;
  const _NoConnectionDataError._() : super._();
}

/// @nodoc
abstract class _$$_GenericDataErrorCopyWith<$Res> {
  factory _$$_GenericDataErrorCopyWith(
          _$_GenericDataError value, $Res Function(_$_GenericDataError) then) =
      __$$_GenericDataErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_GenericDataErrorCopyWithImpl<$Res>
    extends _$DataErrorCopyWithImpl<$Res, _$_GenericDataError>
    implements _$$_GenericDataErrorCopyWith<$Res> {
  __$$_GenericDataErrorCopyWithImpl(
      _$_GenericDataError _value, $Res Function(_$_GenericDataError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_GenericDataError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GenericDataError extends _GenericDataError {
  const _$_GenericDataError({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'DataError.generic(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenericDataError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenericDataErrorCopyWith<_$_GenericDataError> get copyWith =>
      __$$_GenericDataErrorCopyWithImpl<_$_GenericDataError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Article> articles) expiredArticles,
    required TResult Function(String? message) httpStatus,
    required TResult Function() noConnection,
    required TResult Function(String? message) generic,
    required TResult Function(String? message) db,
  }) {
    return generic(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Article> articles)? expiredArticles,
    TResult? Function(String? message)? httpStatus,
    TResult? Function()? noConnection,
    TResult? Function(String? message)? generic,
    TResult? Function(String? message)? db,
  }) {
    return generic?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Article> articles)? expiredArticles,
    TResult Function(String? message)? httpStatus,
    TResult Function()? noConnection,
    TResult Function(String? message)? generic,
    TResult Function(String? message)? db,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpiredArticlesDataError value) expiredArticles,
    required TResult Function(_HttpStatusDataError value) httpStatus,
    required TResult Function(_NoConnectionDataError value) noConnection,
    required TResult Function(_GenericDataError value) generic,
    required TResult Function(_DatabaseError value) db,
  }) {
    return generic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpiredArticlesDataError value)? expiredArticles,
    TResult? Function(_HttpStatusDataError value)? httpStatus,
    TResult? Function(_NoConnectionDataError value)? noConnection,
    TResult? Function(_GenericDataError value)? generic,
    TResult? Function(_DatabaseError value)? db,
  }) {
    return generic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpiredArticlesDataError value)? expiredArticles,
    TResult Function(_HttpStatusDataError value)? httpStatus,
    TResult Function(_NoConnectionDataError value)? noConnection,
    TResult Function(_GenericDataError value)? generic,
    TResult Function(_DatabaseError value)? db,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(this);
    }
    return orElse();
  }
}

abstract class _GenericDataError extends DataError {
  const factory _GenericDataError({final String? message}) =
      _$_GenericDataError;
  const _GenericDataError._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$_GenericDataErrorCopyWith<_$_GenericDataError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DatabaseErrorCopyWith<$Res> {
  factory _$$_DatabaseErrorCopyWith(
          _$_DatabaseError value, $Res Function(_$_DatabaseError) then) =
      __$$_DatabaseErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_DatabaseErrorCopyWithImpl<$Res>
    extends _$DataErrorCopyWithImpl<$Res, _$_DatabaseError>
    implements _$$_DatabaseErrorCopyWith<$Res> {
  __$$_DatabaseErrorCopyWithImpl(
      _$_DatabaseError _value, $Res Function(_$_DatabaseError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_DatabaseError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DatabaseError extends _DatabaseError {
  const _$_DatabaseError({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'DataError.db(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DatabaseError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatabaseErrorCopyWith<_$_DatabaseError> get copyWith =>
      __$$_DatabaseErrorCopyWithImpl<_$_DatabaseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Article> articles) expiredArticles,
    required TResult Function(String? message) httpStatus,
    required TResult Function() noConnection,
    required TResult Function(String? message) generic,
    required TResult Function(String? message) db,
  }) {
    return db(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Article> articles)? expiredArticles,
    TResult? Function(String? message)? httpStatus,
    TResult? Function()? noConnection,
    TResult? Function(String? message)? generic,
    TResult? Function(String? message)? db,
  }) {
    return db?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Article> articles)? expiredArticles,
    TResult Function(String? message)? httpStatus,
    TResult Function()? noConnection,
    TResult Function(String? message)? generic,
    TResult Function(String? message)? db,
    required TResult orElse(),
  }) {
    if (db != null) {
      return db(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpiredArticlesDataError value) expiredArticles,
    required TResult Function(_HttpStatusDataError value) httpStatus,
    required TResult Function(_NoConnectionDataError value) noConnection,
    required TResult Function(_GenericDataError value) generic,
    required TResult Function(_DatabaseError value) db,
  }) {
    return db(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpiredArticlesDataError value)? expiredArticles,
    TResult? Function(_HttpStatusDataError value)? httpStatus,
    TResult? Function(_NoConnectionDataError value)? noConnection,
    TResult? Function(_GenericDataError value)? generic,
    TResult? Function(_DatabaseError value)? db,
  }) {
    return db?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpiredArticlesDataError value)? expiredArticles,
    TResult Function(_HttpStatusDataError value)? httpStatus,
    TResult Function(_NoConnectionDataError value)? noConnection,
    TResult Function(_GenericDataError value)? generic,
    TResult Function(_DatabaseError value)? db,
    required TResult orElse(),
  }) {
    if (db != null) {
      return db(this);
    }
    return orElse();
  }
}

abstract class _DatabaseError extends DataError {
  const factory _DatabaseError({final String? message}) = _$_DatabaseError;
  const _DatabaseError._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$_DatabaseErrorCopyWith<_$_DatabaseError> get copyWith =>
      throw _privateConstructorUsedError;
}
