// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsActions {
  bool get top => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool top, bool forceRemoteFetch, String? country)
        loadNewsAction,
    required TResult Function(bool top) loadingNewsAction,
    required TResult Function(
            bool top, List<Article> articles, bool validity, bool freshness)
        loadedNewsAction,
    required TResult Function(String? message, bool top) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool top, bool forceRemoteFetch, String? country)?
        loadNewsAction,
    TResult? Function(bool top)? loadingNewsAction,
    TResult? Function(
            bool top, List<Article> articles, bool validity, bool freshness)?
        loadedNewsAction,
    TResult? Function(String? message, bool top)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool top, bool forceRemoteFetch, String? country)?
        loadNewsAction,
    TResult Function(bool top)? loadingNewsAction,
    TResult Function(
            bool top, List<Article> articles, bool validity, bool freshness)?
        loadedNewsAction,
    TResult Function(String? message, bool top)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNewsAction value) loadNewsAction,
    required TResult Function(LoadingNewsAction value) loadingNewsAction,
    required TResult Function(LoadedNewsAction value) loadedNewsAction,
    required TResult Function(ErrorNewsAction value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNewsAction value)? loadNewsAction,
    TResult? Function(LoadingNewsAction value)? loadingNewsAction,
    TResult? Function(LoadedNewsAction value)? loadedNewsAction,
    TResult? Function(ErrorNewsAction value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNewsAction value)? loadNewsAction,
    TResult Function(LoadingNewsAction value)? loadingNewsAction,
    TResult Function(LoadedNewsAction value)? loadedNewsAction,
    TResult Function(ErrorNewsAction value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsActionsCopyWith<NewsActions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsActionsCopyWith<$Res> {
  factory $NewsActionsCopyWith(
          NewsActions value, $Res Function(NewsActions) then) =
      _$NewsActionsCopyWithImpl<$Res, NewsActions>;
  @useResult
  $Res call({bool top});
}

/// @nodoc
class _$NewsActionsCopyWithImpl<$Res, $Val extends NewsActions>
    implements $NewsActionsCopyWith<$Res> {
  _$NewsActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = null,
  }) {
    return _then(_value.copyWith(
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadNewsActionCopyWith<$Res>
    implements $NewsActionsCopyWith<$Res> {
  factory _$$LoadNewsActionCopyWith(
          _$LoadNewsAction value, $Res Function(_$LoadNewsAction) then) =
      __$$LoadNewsActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool top, bool forceRemoteFetch, String? country});
}

/// @nodoc
class __$$LoadNewsActionCopyWithImpl<$Res>
    extends _$NewsActionsCopyWithImpl<$Res, _$LoadNewsAction>
    implements _$$LoadNewsActionCopyWith<$Res> {
  __$$LoadNewsActionCopyWithImpl(
      _$LoadNewsAction _value, $Res Function(_$LoadNewsAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = null,
    Object? forceRemoteFetch = null,
    Object? country = freezed,
  }) {
    return _then(_$LoadNewsAction(
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as bool,
      forceRemoteFetch: null == forceRemoteFetch
          ? _value.forceRemoteFetch
          : forceRemoteFetch // ignore: cast_nullable_to_non_nullable
              as bool,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadNewsAction implements LoadNewsAction {
  const _$LoadNewsAction(
      {required this.top, this.forceRemoteFetch = false, this.country});

  @override
  final bool top;
  @override
  @JsonKey()
  final bool forceRemoteFetch;
  @override
  final String? country;

  @override
  String toString() {
    return 'NewsActions.loadNewsAction(top: $top, forceRemoteFetch: $forceRemoteFetch, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadNewsAction &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.forceRemoteFetch, forceRemoteFetch) ||
                other.forceRemoteFetch == forceRemoteFetch) &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, top, forceRemoteFetch, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadNewsActionCopyWith<_$LoadNewsAction> get copyWith =>
      __$$LoadNewsActionCopyWithImpl<_$LoadNewsAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool top, bool forceRemoteFetch, String? country)
        loadNewsAction,
    required TResult Function(bool top) loadingNewsAction,
    required TResult Function(
            bool top, List<Article> articles, bool validity, bool freshness)
        loadedNewsAction,
    required TResult Function(String? message, bool top) error,
  }) {
    return loadNewsAction(top, forceRemoteFetch, country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool top, bool forceRemoteFetch, String? country)?
        loadNewsAction,
    TResult? Function(bool top)? loadingNewsAction,
    TResult? Function(
            bool top, List<Article> articles, bool validity, bool freshness)?
        loadedNewsAction,
    TResult? Function(String? message, bool top)? error,
  }) {
    return loadNewsAction?.call(top, forceRemoteFetch, country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool top, bool forceRemoteFetch, String? country)?
        loadNewsAction,
    TResult Function(bool top)? loadingNewsAction,
    TResult Function(
            bool top, List<Article> articles, bool validity, bool freshness)?
        loadedNewsAction,
    TResult Function(String? message, bool top)? error,
    required TResult orElse(),
  }) {
    if (loadNewsAction != null) {
      return loadNewsAction(top, forceRemoteFetch, country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNewsAction value) loadNewsAction,
    required TResult Function(LoadingNewsAction value) loadingNewsAction,
    required TResult Function(LoadedNewsAction value) loadedNewsAction,
    required TResult Function(ErrorNewsAction value) error,
  }) {
    return loadNewsAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNewsAction value)? loadNewsAction,
    TResult? Function(LoadingNewsAction value)? loadingNewsAction,
    TResult? Function(LoadedNewsAction value)? loadedNewsAction,
    TResult? Function(ErrorNewsAction value)? error,
  }) {
    return loadNewsAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNewsAction value)? loadNewsAction,
    TResult Function(LoadingNewsAction value)? loadingNewsAction,
    TResult Function(LoadedNewsAction value)? loadedNewsAction,
    TResult Function(ErrorNewsAction value)? error,
    required TResult orElse(),
  }) {
    if (loadNewsAction != null) {
      return loadNewsAction(this);
    }
    return orElse();
  }
}

abstract class LoadNewsAction implements NewsActions {
  const factory LoadNewsAction(
      {required final bool top,
      final bool forceRemoteFetch,
      final String? country}) = _$LoadNewsAction;

  @override
  bool get top;
  bool get forceRemoteFetch;
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$LoadNewsActionCopyWith<_$LoadNewsAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingNewsActionCopyWith<$Res>
    implements $NewsActionsCopyWith<$Res> {
  factory _$$LoadingNewsActionCopyWith(
          _$LoadingNewsAction value, $Res Function(_$LoadingNewsAction) then) =
      __$$LoadingNewsActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool top});
}

/// @nodoc
class __$$LoadingNewsActionCopyWithImpl<$Res>
    extends _$NewsActionsCopyWithImpl<$Res, _$LoadingNewsAction>
    implements _$$LoadingNewsActionCopyWith<$Res> {
  __$$LoadingNewsActionCopyWithImpl(
      _$LoadingNewsAction _value, $Res Function(_$LoadingNewsAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = null,
  }) {
    return _then(_$LoadingNewsAction(
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingNewsAction implements LoadingNewsAction {
  const _$LoadingNewsAction({required this.top});

  @override
  final bool top;

  @override
  String toString() {
    return 'NewsActions.loadingNewsAction(top: $top)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingNewsAction &&
            (identical(other.top, top) || other.top == top));
  }

  @override
  int get hashCode => Object.hash(runtimeType, top);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingNewsActionCopyWith<_$LoadingNewsAction> get copyWith =>
      __$$LoadingNewsActionCopyWithImpl<_$LoadingNewsAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool top, bool forceRemoteFetch, String? country)
        loadNewsAction,
    required TResult Function(bool top) loadingNewsAction,
    required TResult Function(
            bool top, List<Article> articles, bool validity, bool freshness)
        loadedNewsAction,
    required TResult Function(String? message, bool top) error,
  }) {
    return loadingNewsAction(top);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool top, bool forceRemoteFetch, String? country)?
        loadNewsAction,
    TResult? Function(bool top)? loadingNewsAction,
    TResult? Function(
            bool top, List<Article> articles, bool validity, bool freshness)?
        loadedNewsAction,
    TResult? Function(String? message, bool top)? error,
  }) {
    return loadingNewsAction?.call(top);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool top, bool forceRemoteFetch, String? country)?
        loadNewsAction,
    TResult Function(bool top)? loadingNewsAction,
    TResult Function(
            bool top, List<Article> articles, bool validity, bool freshness)?
        loadedNewsAction,
    TResult Function(String? message, bool top)? error,
    required TResult orElse(),
  }) {
    if (loadingNewsAction != null) {
      return loadingNewsAction(top);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNewsAction value) loadNewsAction,
    required TResult Function(LoadingNewsAction value) loadingNewsAction,
    required TResult Function(LoadedNewsAction value) loadedNewsAction,
    required TResult Function(ErrorNewsAction value) error,
  }) {
    return loadingNewsAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNewsAction value)? loadNewsAction,
    TResult? Function(LoadingNewsAction value)? loadingNewsAction,
    TResult? Function(LoadedNewsAction value)? loadedNewsAction,
    TResult? Function(ErrorNewsAction value)? error,
  }) {
    return loadingNewsAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNewsAction value)? loadNewsAction,
    TResult Function(LoadingNewsAction value)? loadingNewsAction,
    TResult Function(LoadedNewsAction value)? loadedNewsAction,
    TResult Function(ErrorNewsAction value)? error,
    required TResult orElse(),
  }) {
    if (loadingNewsAction != null) {
      return loadingNewsAction(this);
    }
    return orElse();
  }
}

abstract class LoadingNewsAction implements NewsActions {
  const factory LoadingNewsAction({required final bool top}) =
      _$LoadingNewsAction;

  @override
  bool get top;
  @override
  @JsonKey(ignore: true)
  _$$LoadingNewsActionCopyWith<_$LoadingNewsAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedNewsActionCopyWith<$Res>
    implements $NewsActionsCopyWith<$Res> {
  factory _$$LoadedNewsActionCopyWith(
          _$LoadedNewsAction value, $Res Function(_$LoadedNewsAction) then) =
      __$$LoadedNewsActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool top, List<Article> articles, bool validity, bool freshness});
}

/// @nodoc
class __$$LoadedNewsActionCopyWithImpl<$Res>
    extends _$NewsActionsCopyWithImpl<$Res, _$LoadedNewsAction>
    implements _$$LoadedNewsActionCopyWith<$Res> {
  __$$LoadedNewsActionCopyWithImpl(
      _$LoadedNewsAction _value, $Res Function(_$LoadedNewsAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = null,
    Object? articles = null,
    Object? validity = null,
    Object? freshness = null,
  }) {
    return _then(_$LoadedNewsAction(
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$LoadedNewsAction implements LoadedNewsAction {
  const _$LoadedNewsAction(
      {required this.top,
      required final List<Article> articles,
      required this.validity,
      required this.freshness})
      : _articles = articles;

  @override
  final bool top;
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
    return 'NewsActions.loadedNewsAction(top: $top, articles: $articles, validity: $validity, freshness: $freshness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedNewsAction &&
            (identical(other.top, top) || other.top == top) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.validity, validity) ||
                other.validity == validity) &&
            (identical(other.freshness, freshness) ||
                other.freshness == freshness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, top,
      const DeepCollectionEquality().hash(_articles), validity, freshness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedNewsActionCopyWith<_$LoadedNewsAction> get copyWith =>
      __$$LoadedNewsActionCopyWithImpl<_$LoadedNewsAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool top, bool forceRemoteFetch, String? country)
        loadNewsAction,
    required TResult Function(bool top) loadingNewsAction,
    required TResult Function(
            bool top, List<Article> articles, bool validity, bool freshness)
        loadedNewsAction,
    required TResult Function(String? message, bool top) error,
  }) {
    return loadedNewsAction(top, articles, validity, freshness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool top, bool forceRemoteFetch, String? country)?
        loadNewsAction,
    TResult? Function(bool top)? loadingNewsAction,
    TResult? Function(
            bool top, List<Article> articles, bool validity, bool freshness)?
        loadedNewsAction,
    TResult? Function(String? message, bool top)? error,
  }) {
    return loadedNewsAction?.call(top, articles, validity, freshness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool top, bool forceRemoteFetch, String? country)?
        loadNewsAction,
    TResult Function(bool top)? loadingNewsAction,
    TResult Function(
            bool top, List<Article> articles, bool validity, bool freshness)?
        loadedNewsAction,
    TResult Function(String? message, bool top)? error,
    required TResult orElse(),
  }) {
    if (loadedNewsAction != null) {
      return loadedNewsAction(top, articles, validity, freshness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNewsAction value) loadNewsAction,
    required TResult Function(LoadingNewsAction value) loadingNewsAction,
    required TResult Function(LoadedNewsAction value) loadedNewsAction,
    required TResult Function(ErrorNewsAction value) error,
  }) {
    return loadedNewsAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNewsAction value)? loadNewsAction,
    TResult? Function(LoadingNewsAction value)? loadingNewsAction,
    TResult? Function(LoadedNewsAction value)? loadedNewsAction,
    TResult? Function(ErrorNewsAction value)? error,
  }) {
    return loadedNewsAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNewsAction value)? loadNewsAction,
    TResult Function(LoadingNewsAction value)? loadingNewsAction,
    TResult Function(LoadedNewsAction value)? loadedNewsAction,
    TResult Function(ErrorNewsAction value)? error,
    required TResult orElse(),
  }) {
    if (loadedNewsAction != null) {
      return loadedNewsAction(this);
    }
    return orElse();
  }
}

abstract class LoadedNewsAction implements NewsActions {
  const factory LoadedNewsAction(
      {required final bool top,
      required final List<Article> articles,
      required final bool validity,
      required final bool freshness}) = _$LoadedNewsAction;

  @override
  bool get top;
  List<Article> get articles;
  bool get validity;
  bool get freshness;
  @override
  @JsonKey(ignore: true)
  _$$LoadedNewsActionCopyWith<_$LoadedNewsAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorNewsActionCopyWith<$Res>
    implements $NewsActionsCopyWith<$Res> {
  factory _$$ErrorNewsActionCopyWith(
          _$ErrorNewsAction value, $Res Function(_$ErrorNewsAction) then) =
      __$$ErrorNewsActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool top});
}

/// @nodoc
class __$$ErrorNewsActionCopyWithImpl<$Res>
    extends _$NewsActionsCopyWithImpl<$Res, _$ErrorNewsAction>
    implements _$$ErrorNewsActionCopyWith<$Res> {
  __$$ErrorNewsActionCopyWithImpl(
      _$ErrorNewsAction _value, $Res Function(_$ErrorNewsAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? top = null,
  }) {
    return _then(_$ErrorNewsAction(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ErrorNewsAction implements ErrorNewsAction {
  const _$ErrorNewsAction({this.message, required this.top});

  @override
  final String? message;
  @override
  final bool top;

  @override
  String toString() {
    return 'NewsActions.error(message: $message, top: $top)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorNewsAction &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.top, top) || other.top == top));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, top);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorNewsActionCopyWith<_$ErrorNewsAction> get copyWith =>
      __$$ErrorNewsActionCopyWithImpl<_$ErrorNewsAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool top, bool forceRemoteFetch, String? country)
        loadNewsAction,
    required TResult Function(bool top) loadingNewsAction,
    required TResult Function(
            bool top, List<Article> articles, bool validity, bool freshness)
        loadedNewsAction,
    required TResult Function(String? message, bool top) error,
  }) {
    return error(message, top);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool top, bool forceRemoteFetch, String? country)?
        loadNewsAction,
    TResult? Function(bool top)? loadingNewsAction,
    TResult? Function(
            bool top, List<Article> articles, bool validity, bool freshness)?
        loadedNewsAction,
    TResult? Function(String? message, bool top)? error,
  }) {
    return error?.call(message, top);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool top, bool forceRemoteFetch, String? country)?
        loadNewsAction,
    TResult Function(bool top)? loadingNewsAction,
    TResult Function(
            bool top, List<Article> articles, bool validity, bool freshness)?
        loadedNewsAction,
    TResult Function(String? message, bool top)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, top);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNewsAction value) loadNewsAction,
    required TResult Function(LoadingNewsAction value) loadingNewsAction,
    required TResult Function(LoadedNewsAction value) loadedNewsAction,
    required TResult Function(ErrorNewsAction value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadNewsAction value)? loadNewsAction,
    TResult? Function(LoadingNewsAction value)? loadingNewsAction,
    TResult? Function(LoadedNewsAction value)? loadedNewsAction,
    TResult? Function(ErrorNewsAction value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNewsAction value)? loadNewsAction,
    TResult Function(LoadingNewsAction value)? loadingNewsAction,
    TResult Function(LoadedNewsAction value)? loadedNewsAction,
    TResult Function(ErrorNewsAction value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorNewsAction implements NewsActions {
  const factory ErrorNewsAction(
      {final String? message, required final bool top}) = _$ErrorNewsAction;

  String? get message;
  @override
  bool get top;
  @override
  @JsonKey(ignore: true)
  _$$ErrorNewsActionCopyWith<_$ErrorNewsAction> get copyWith =>
      throw _privateConstructorUsedError;
}
