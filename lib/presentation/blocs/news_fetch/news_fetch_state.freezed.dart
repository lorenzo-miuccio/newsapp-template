// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_fetch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsFetchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            List<Article> articles, bool validity, bool freshness)
        hasData,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<Article> articles, bool validity, bool freshness)?
        hasData,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Article> articles, bool validity, bool freshness)?
        hasData,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(String? message)? noConnectionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsIdleState value) idle,
    required TResult Function(_NewsFetchDataState value) hasData,
    required TResult Function(_NewsFetchLoadingState value) loading,
    required TResult Function(_NewsFetchError value) error,
    required TResult Function(_NewsFetchNoConnectionError value)
        noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsIdleState value)? idle,
    TResult? Function(_NewsFetchDataState value)? hasData,
    TResult? Function(_NewsFetchLoadingState value)? loading,
    TResult? Function(_NewsFetchError value)? error,
    TResult? Function(_NewsFetchNoConnectionError value)? noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsIdleState value)? idle,
    TResult Function(_NewsFetchDataState value)? hasData,
    TResult Function(_NewsFetchLoadingState value)? loading,
    TResult Function(_NewsFetchError value)? error,
    TResult Function(_NewsFetchNoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsFetchStateCopyWith<$Res> {
  factory $NewsFetchStateCopyWith(
          NewsFetchState value, $Res Function(NewsFetchState) then) =
      _$NewsFetchStateCopyWithImpl<$Res, NewsFetchState>;
}

/// @nodoc
class _$NewsFetchStateCopyWithImpl<$Res, $Val extends NewsFetchState>
    implements $NewsFetchStateCopyWith<$Res> {
  _$NewsFetchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NewsIdleStateCopyWith<$Res> {
  factory _$$_NewsIdleStateCopyWith(
          _$_NewsIdleState value, $Res Function(_$_NewsIdleState) then) =
      __$$_NewsIdleStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewsIdleStateCopyWithImpl<$Res>
    extends _$NewsFetchStateCopyWithImpl<$Res, _$_NewsIdleState>
    implements _$$_NewsIdleStateCopyWith<$Res> {
  __$$_NewsIdleStateCopyWithImpl(
      _$_NewsIdleState _value, $Res Function(_$_NewsIdleState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewsIdleState implements _NewsIdleState {
  const _$_NewsIdleState();

  @override
  String toString() {
    return 'NewsFetchState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewsIdleState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            List<Article> articles, bool validity, bool freshness)
        hasData,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<Article> articles, bool validity, bool freshness)?
        hasData,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Article> articles, bool validity, bool freshness)?
        hasData,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(String? message)? noConnectionError,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsIdleState value) idle,
    required TResult Function(_NewsFetchDataState value) hasData,
    required TResult Function(_NewsFetchLoadingState value) loading,
    required TResult Function(_NewsFetchError value) error,
    required TResult Function(_NewsFetchNoConnectionError value)
        noConnectionError,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsIdleState value)? idle,
    TResult? Function(_NewsFetchDataState value)? hasData,
    TResult? Function(_NewsFetchLoadingState value)? loading,
    TResult? Function(_NewsFetchError value)? error,
    TResult? Function(_NewsFetchNoConnectionError value)? noConnectionError,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsIdleState value)? idle,
    TResult Function(_NewsFetchDataState value)? hasData,
    TResult Function(_NewsFetchLoadingState value)? loading,
    TResult Function(_NewsFetchError value)? error,
    TResult Function(_NewsFetchNoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _NewsIdleState implements NewsFetchState {
  const factory _NewsIdleState() = _$_NewsIdleState;
}

/// @nodoc
abstract class _$$_NewsFetchDataStateCopyWith<$Res> {
  factory _$$_NewsFetchDataStateCopyWith(_$_NewsFetchDataState value,
          $Res Function(_$_NewsFetchDataState) then) =
      __$$_NewsFetchDataStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article> articles, bool validity, bool freshness});
}

/// @nodoc
class __$$_NewsFetchDataStateCopyWithImpl<$Res>
    extends _$NewsFetchStateCopyWithImpl<$Res, _$_NewsFetchDataState>
    implements _$$_NewsFetchDataStateCopyWith<$Res> {
  __$$_NewsFetchDataStateCopyWithImpl(
      _$_NewsFetchDataState _value, $Res Function(_$_NewsFetchDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
    Object? validity = null,
    Object? freshness = null,
  }) {
    return _then(_$_NewsFetchDataState(
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      validity: null == validity
          ? _value.validity
          : validity // ignore: cast_nullable_to_non_nullable
              as bool,
      freshness: null == freshness
          ? _value.freshness
          : freshness // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NewsFetchDataState implements _NewsFetchDataState {
  const _$_NewsFetchDataState(
      {required final List<Article> articles,
      required this.validity,
      required this.freshness})
      : _articles = articles;

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final bool validity;
  @override
  final bool freshness;

  @override
  String toString() {
    return 'NewsFetchState.hasData(articles: $articles, validity: $validity, freshness: $freshness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsFetchDataState &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.validity, validity) ||
                other.validity == validity) &&
            (identical(other.freshness, freshness) ||
                other.freshness == freshness));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_articles), validity, freshness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsFetchDataStateCopyWith<_$_NewsFetchDataState> get copyWith =>
      __$$_NewsFetchDataStateCopyWithImpl<_$_NewsFetchDataState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            List<Article> articles, bool validity, bool freshness)
        hasData,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) {
    return hasData(articles, validity, freshness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<Article> articles, bool validity, bool freshness)?
        hasData,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) {
    return hasData?.call(articles, validity, freshness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Article> articles, bool validity, bool freshness)?
        hasData,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(String? message)? noConnectionError,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(articles, validity, freshness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsIdleState value) idle,
    required TResult Function(_NewsFetchDataState value) hasData,
    required TResult Function(_NewsFetchLoadingState value) loading,
    required TResult Function(_NewsFetchError value) error,
    required TResult Function(_NewsFetchNoConnectionError value)
        noConnectionError,
  }) {
    return hasData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsIdleState value)? idle,
    TResult? Function(_NewsFetchDataState value)? hasData,
    TResult? Function(_NewsFetchLoadingState value)? loading,
    TResult? Function(_NewsFetchError value)? error,
    TResult? Function(_NewsFetchNoConnectionError value)? noConnectionError,
  }) {
    return hasData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsIdleState value)? idle,
    TResult Function(_NewsFetchDataState value)? hasData,
    TResult Function(_NewsFetchLoadingState value)? loading,
    TResult Function(_NewsFetchError value)? error,
    TResult Function(_NewsFetchNoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(this);
    }
    return orElse();
  }
}

abstract class _NewsFetchDataState implements NewsFetchState {
  const factory _NewsFetchDataState(
      {required final List<Article> articles,
      required final bool validity,
      required final bool freshness}) = _$_NewsFetchDataState;

  List<Article> get articles;
  bool get validity;
  bool get freshness;
  @JsonKey(ignore: true)
  _$$_NewsFetchDataStateCopyWith<_$_NewsFetchDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewsFetchLoadingStateCopyWith<$Res> {
  factory _$$_NewsFetchLoadingStateCopyWith(_$_NewsFetchLoadingState value,
          $Res Function(_$_NewsFetchLoadingState) then) =
      __$$_NewsFetchLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewsFetchLoadingStateCopyWithImpl<$Res>
    extends _$NewsFetchStateCopyWithImpl<$Res, _$_NewsFetchLoadingState>
    implements _$$_NewsFetchLoadingStateCopyWith<$Res> {
  __$$_NewsFetchLoadingStateCopyWithImpl(_$_NewsFetchLoadingState _value,
      $Res Function(_$_NewsFetchLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewsFetchLoadingState implements _NewsFetchLoadingState {
  const _$_NewsFetchLoadingState();

  @override
  String toString() {
    return 'NewsFetchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewsFetchLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            List<Article> articles, bool validity, bool freshness)
        hasData,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<Article> articles, bool validity, bool freshness)?
        hasData,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Article> articles, bool validity, bool freshness)?
        hasData,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(String? message)? noConnectionError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsIdleState value) idle,
    required TResult Function(_NewsFetchDataState value) hasData,
    required TResult Function(_NewsFetchLoadingState value) loading,
    required TResult Function(_NewsFetchError value) error,
    required TResult Function(_NewsFetchNoConnectionError value)
        noConnectionError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsIdleState value)? idle,
    TResult? Function(_NewsFetchDataState value)? hasData,
    TResult? Function(_NewsFetchLoadingState value)? loading,
    TResult? Function(_NewsFetchError value)? error,
    TResult? Function(_NewsFetchNoConnectionError value)? noConnectionError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsIdleState value)? idle,
    TResult Function(_NewsFetchDataState value)? hasData,
    TResult Function(_NewsFetchLoadingState value)? loading,
    TResult Function(_NewsFetchError value)? error,
    TResult Function(_NewsFetchNoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NewsFetchLoadingState implements NewsFetchState {
  const factory _NewsFetchLoadingState() = _$_NewsFetchLoadingState;
}

/// @nodoc
abstract class _$$_NewsFetchErrorCopyWith<$Res> {
  factory _$$_NewsFetchErrorCopyWith(
          _$_NewsFetchError value, $Res Function(_$_NewsFetchError) then) =
      __$$_NewsFetchErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_NewsFetchErrorCopyWithImpl<$Res>
    extends _$NewsFetchStateCopyWithImpl<$Res, _$_NewsFetchError>
    implements _$$_NewsFetchErrorCopyWith<$Res> {
  __$$_NewsFetchErrorCopyWithImpl(
      _$_NewsFetchError _value, $Res Function(_$_NewsFetchError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_NewsFetchError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NewsFetchError implements _NewsFetchError {
  const _$_NewsFetchError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'NewsFetchState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsFetchError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsFetchErrorCopyWith<_$_NewsFetchError> get copyWith =>
      __$$_NewsFetchErrorCopyWithImpl<_$_NewsFetchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            List<Article> articles, bool validity, bool freshness)
        hasData,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<Article> articles, bool validity, bool freshness)?
        hasData,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Article> articles, bool validity, bool freshness)?
        hasData,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(String? message)? noConnectionError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsIdleState value) idle,
    required TResult Function(_NewsFetchDataState value) hasData,
    required TResult Function(_NewsFetchLoadingState value) loading,
    required TResult Function(_NewsFetchError value) error,
    required TResult Function(_NewsFetchNoConnectionError value)
        noConnectionError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsIdleState value)? idle,
    TResult? Function(_NewsFetchDataState value)? hasData,
    TResult? Function(_NewsFetchLoadingState value)? loading,
    TResult? Function(_NewsFetchError value)? error,
    TResult? Function(_NewsFetchNoConnectionError value)? noConnectionError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsIdleState value)? idle,
    TResult Function(_NewsFetchDataState value)? hasData,
    TResult Function(_NewsFetchLoadingState value)? loading,
    TResult Function(_NewsFetchError value)? error,
    TResult Function(_NewsFetchNoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NewsFetchError implements NewsFetchState {
  const factory _NewsFetchError({final String? message}) = _$_NewsFetchError;

  String? get message;
  @JsonKey(ignore: true)
  _$$_NewsFetchErrorCopyWith<_$_NewsFetchError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewsFetchNoConnectionErrorCopyWith<$Res> {
  factory _$$_NewsFetchNoConnectionErrorCopyWith(
          _$_NewsFetchNoConnectionError value,
          $Res Function(_$_NewsFetchNoConnectionError) then) =
      __$$_NewsFetchNoConnectionErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_NewsFetchNoConnectionErrorCopyWithImpl<$Res>
    extends _$NewsFetchStateCopyWithImpl<$Res, _$_NewsFetchNoConnectionError>
    implements _$$_NewsFetchNoConnectionErrorCopyWith<$Res> {
  __$$_NewsFetchNoConnectionErrorCopyWithImpl(
      _$_NewsFetchNoConnectionError _value,
      $Res Function(_$_NewsFetchNoConnectionError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_NewsFetchNoConnectionError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NewsFetchNoConnectionError implements _NewsFetchNoConnectionError {
  const _$_NewsFetchNoConnectionError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'NewsFetchState.noConnectionError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsFetchNoConnectionError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsFetchNoConnectionErrorCopyWith<_$_NewsFetchNoConnectionError>
      get copyWith => __$$_NewsFetchNoConnectionErrorCopyWithImpl<
          _$_NewsFetchNoConnectionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            List<Article> articles, bool validity, bool freshness)
        hasData,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) {
    return noConnectionError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<Article> articles, bool validity, bool freshness)?
        hasData,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) {
    return noConnectionError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Article> articles, bool validity, bool freshness)?
        hasData,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(String? message)? noConnectionError,
    required TResult orElse(),
  }) {
    if (noConnectionError != null) {
      return noConnectionError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsIdleState value) idle,
    required TResult Function(_NewsFetchDataState value) hasData,
    required TResult Function(_NewsFetchLoadingState value) loading,
    required TResult Function(_NewsFetchError value) error,
    required TResult Function(_NewsFetchNoConnectionError value)
        noConnectionError,
  }) {
    return noConnectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsIdleState value)? idle,
    TResult? Function(_NewsFetchDataState value)? hasData,
    TResult? Function(_NewsFetchLoadingState value)? loading,
    TResult? Function(_NewsFetchError value)? error,
    TResult? Function(_NewsFetchNoConnectionError value)? noConnectionError,
  }) {
    return noConnectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsIdleState value)? idle,
    TResult Function(_NewsFetchDataState value)? hasData,
    TResult Function(_NewsFetchLoadingState value)? loading,
    TResult Function(_NewsFetchError value)? error,
    TResult Function(_NewsFetchNoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) {
    if (noConnectionError != null) {
      return noConnectionError(this);
    }
    return orElse();
  }
}

abstract class _NewsFetchNoConnectionError implements NewsFetchState {
  const factory _NewsFetchNoConnectionError({final String? message}) =
      _$_NewsFetchNoConnectionError;

  String? get message;
  @JsonKey(ignore: true)
  _$$_NewsFetchNoConnectionErrorCopyWith<_$_NewsFetchNoConnectionError>
      get copyWith => throw _privateConstructorUsedError;
}
