// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_news_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SavedNewsActions {
  bool get shared => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shared) loadNewsAction,
    required TResult Function(bool shared) loadingNewsAction,
    required TResult Function(bool shared, List<Article> articles)
        loadedNewsAction,
    required TResult Function(String? message, bool shared) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shared)? loadNewsAction,
    TResult? Function(bool shared)? loadingNewsAction,
    TResult? Function(bool shared, List<Article> articles)? loadedNewsAction,
    TResult? Function(String? message, bool shared)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shared)? loadNewsAction,
    TResult Function(bool shared)? loadingNewsAction,
    TResult Function(bool shared, List<Article> articles)? loadedNewsAction,
    TResult Function(String? message, bool shared)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSavedNewsAction value) loadNewsAction,
    required TResult Function(LoadingSavedNewsAction value) loadingNewsAction,
    required TResult Function(LoadedSavedNewsAction value) loadedNewsAction,
    required TResult Function(ErrorSavedNewsAction value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSavedNewsAction value)? loadNewsAction,
    TResult? Function(LoadingSavedNewsAction value)? loadingNewsAction,
    TResult? Function(LoadedSavedNewsAction value)? loadedNewsAction,
    TResult? Function(ErrorSavedNewsAction value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSavedNewsAction value)? loadNewsAction,
    TResult Function(LoadingSavedNewsAction value)? loadingNewsAction,
    TResult Function(LoadedSavedNewsAction value)? loadedNewsAction,
    TResult Function(ErrorSavedNewsAction value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavedNewsActionsCopyWith<SavedNewsActions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedNewsActionsCopyWith<$Res> {
  factory $SavedNewsActionsCopyWith(
          SavedNewsActions value, $Res Function(SavedNewsActions) then) =
      _$SavedNewsActionsCopyWithImpl<$Res, SavedNewsActions>;
  @useResult
  $Res call({bool shared});
}

/// @nodoc
class _$SavedNewsActionsCopyWithImpl<$Res, $Val extends SavedNewsActions>
    implements $SavedNewsActionsCopyWith<$Res> {
  _$SavedNewsActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shared = null,
  }) {
    return _then(_value.copyWith(
      shared: null == shared
          ? _value.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadSavedNewsActionCopyWith<$Res>
    implements $SavedNewsActionsCopyWith<$Res> {
  factory _$$LoadSavedNewsActionCopyWith(_$LoadSavedNewsAction value,
          $Res Function(_$LoadSavedNewsAction) then) =
      __$$LoadSavedNewsActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool shared});
}

/// @nodoc
class __$$LoadSavedNewsActionCopyWithImpl<$Res>
    extends _$SavedNewsActionsCopyWithImpl<$Res, _$LoadSavedNewsAction>
    implements _$$LoadSavedNewsActionCopyWith<$Res> {
  __$$LoadSavedNewsActionCopyWithImpl(
      _$LoadSavedNewsAction _value, $Res Function(_$LoadSavedNewsAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shared = null,
  }) {
    return _then(_$LoadSavedNewsAction(
      shared: null == shared
          ? _value.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadSavedNewsAction implements LoadSavedNewsAction {
  const _$LoadSavedNewsAction({this.shared = false});

  @override
  @JsonKey()
  final bool shared;

  @override
  String toString() {
    return 'SavedNewsActions.loadNewsAction(shared: $shared)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSavedNewsAction &&
            (identical(other.shared, shared) || other.shared == shared));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shared);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSavedNewsActionCopyWith<_$LoadSavedNewsAction> get copyWith =>
      __$$LoadSavedNewsActionCopyWithImpl<_$LoadSavedNewsAction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shared) loadNewsAction,
    required TResult Function(bool shared) loadingNewsAction,
    required TResult Function(bool shared, List<Article> articles)
        loadedNewsAction,
    required TResult Function(String? message, bool shared) error,
  }) {
    return loadNewsAction(shared);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shared)? loadNewsAction,
    TResult? Function(bool shared)? loadingNewsAction,
    TResult? Function(bool shared, List<Article> articles)? loadedNewsAction,
    TResult? Function(String? message, bool shared)? error,
  }) {
    return loadNewsAction?.call(shared);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shared)? loadNewsAction,
    TResult Function(bool shared)? loadingNewsAction,
    TResult Function(bool shared, List<Article> articles)? loadedNewsAction,
    TResult Function(String? message, bool shared)? error,
    required TResult orElse(),
  }) {
    if (loadNewsAction != null) {
      return loadNewsAction(shared);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSavedNewsAction value) loadNewsAction,
    required TResult Function(LoadingSavedNewsAction value) loadingNewsAction,
    required TResult Function(LoadedSavedNewsAction value) loadedNewsAction,
    required TResult Function(ErrorSavedNewsAction value) error,
  }) {
    return loadNewsAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSavedNewsAction value)? loadNewsAction,
    TResult? Function(LoadingSavedNewsAction value)? loadingNewsAction,
    TResult? Function(LoadedSavedNewsAction value)? loadedNewsAction,
    TResult? Function(ErrorSavedNewsAction value)? error,
  }) {
    return loadNewsAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSavedNewsAction value)? loadNewsAction,
    TResult Function(LoadingSavedNewsAction value)? loadingNewsAction,
    TResult Function(LoadedSavedNewsAction value)? loadedNewsAction,
    TResult Function(ErrorSavedNewsAction value)? error,
    required TResult orElse(),
  }) {
    if (loadNewsAction != null) {
      return loadNewsAction(this);
    }
    return orElse();
  }
}

abstract class LoadSavedNewsAction implements SavedNewsActions {
  const factory LoadSavedNewsAction({final bool shared}) =
      _$LoadSavedNewsAction;

  @override
  bool get shared;
  @override
  @JsonKey(ignore: true)
  _$$LoadSavedNewsActionCopyWith<_$LoadSavedNewsAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingSavedNewsActionCopyWith<$Res>
    implements $SavedNewsActionsCopyWith<$Res> {
  factory _$$LoadingSavedNewsActionCopyWith(_$LoadingSavedNewsAction value,
          $Res Function(_$LoadingSavedNewsAction) then) =
      __$$LoadingSavedNewsActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool shared});
}

/// @nodoc
class __$$LoadingSavedNewsActionCopyWithImpl<$Res>
    extends _$SavedNewsActionsCopyWithImpl<$Res, _$LoadingSavedNewsAction>
    implements _$$LoadingSavedNewsActionCopyWith<$Res> {
  __$$LoadingSavedNewsActionCopyWithImpl(_$LoadingSavedNewsAction _value,
      $Res Function(_$LoadingSavedNewsAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shared = null,
  }) {
    return _then(_$LoadingSavedNewsAction(
      shared: null == shared
          ? _value.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingSavedNewsAction implements LoadingSavedNewsAction {
  const _$LoadingSavedNewsAction({this.shared = false});

  @override
  @JsonKey()
  final bool shared;

  @override
  String toString() {
    return 'SavedNewsActions.loadingNewsAction(shared: $shared)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingSavedNewsAction &&
            (identical(other.shared, shared) || other.shared == shared));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shared);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingSavedNewsActionCopyWith<_$LoadingSavedNewsAction> get copyWith =>
      __$$LoadingSavedNewsActionCopyWithImpl<_$LoadingSavedNewsAction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shared) loadNewsAction,
    required TResult Function(bool shared) loadingNewsAction,
    required TResult Function(bool shared, List<Article> articles)
        loadedNewsAction,
    required TResult Function(String? message, bool shared) error,
  }) {
    return loadingNewsAction(shared);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shared)? loadNewsAction,
    TResult? Function(bool shared)? loadingNewsAction,
    TResult? Function(bool shared, List<Article> articles)? loadedNewsAction,
    TResult? Function(String? message, bool shared)? error,
  }) {
    return loadingNewsAction?.call(shared);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shared)? loadNewsAction,
    TResult Function(bool shared)? loadingNewsAction,
    TResult Function(bool shared, List<Article> articles)? loadedNewsAction,
    TResult Function(String? message, bool shared)? error,
    required TResult orElse(),
  }) {
    if (loadingNewsAction != null) {
      return loadingNewsAction(shared);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSavedNewsAction value) loadNewsAction,
    required TResult Function(LoadingSavedNewsAction value) loadingNewsAction,
    required TResult Function(LoadedSavedNewsAction value) loadedNewsAction,
    required TResult Function(ErrorSavedNewsAction value) error,
  }) {
    return loadingNewsAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSavedNewsAction value)? loadNewsAction,
    TResult? Function(LoadingSavedNewsAction value)? loadingNewsAction,
    TResult? Function(LoadedSavedNewsAction value)? loadedNewsAction,
    TResult? Function(ErrorSavedNewsAction value)? error,
  }) {
    return loadingNewsAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSavedNewsAction value)? loadNewsAction,
    TResult Function(LoadingSavedNewsAction value)? loadingNewsAction,
    TResult Function(LoadedSavedNewsAction value)? loadedNewsAction,
    TResult Function(ErrorSavedNewsAction value)? error,
    required TResult orElse(),
  }) {
    if (loadingNewsAction != null) {
      return loadingNewsAction(this);
    }
    return orElse();
  }
}

abstract class LoadingSavedNewsAction implements SavedNewsActions {
  const factory LoadingSavedNewsAction({final bool shared}) =
      _$LoadingSavedNewsAction;

  @override
  bool get shared;
  @override
  @JsonKey(ignore: true)
  _$$LoadingSavedNewsActionCopyWith<_$LoadingSavedNewsAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedSavedNewsActionCopyWith<$Res>
    implements $SavedNewsActionsCopyWith<$Res> {
  factory _$$LoadedSavedNewsActionCopyWith(_$LoadedSavedNewsAction value,
          $Res Function(_$LoadedSavedNewsAction) then) =
      __$$LoadedSavedNewsActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool shared, List<Article> articles});
}

/// @nodoc
class __$$LoadedSavedNewsActionCopyWithImpl<$Res>
    extends _$SavedNewsActionsCopyWithImpl<$Res, _$LoadedSavedNewsAction>
    implements _$$LoadedSavedNewsActionCopyWith<$Res> {
  __$$LoadedSavedNewsActionCopyWithImpl(_$LoadedSavedNewsAction _value,
      $Res Function(_$LoadedSavedNewsAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shared = null,
    Object? articles = null,
  }) {
    return _then(_$LoadedSavedNewsAction(
      shared: null == shared
          ? _value.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as bool,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$LoadedSavedNewsAction implements LoadedSavedNewsAction {
  const _$LoadedSavedNewsAction(
      {this.shared = false, required final List<Article> articles})
      : _articles = articles;

  @override
  @JsonKey()
  final bool shared;
  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'SavedNewsActions.loadedNewsAction(shared: $shared, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSavedNewsAction &&
            (identical(other.shared, shared) || other.shared == shared) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, shared, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSavedNewsActionCopyWith<_$LoadedSavedNewsAction> get copyWith =>
      __$$LoadedSavedNewsActionCopyWithImpl<_$LoadedSavedNewsAction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shared) loadNewsAction,
    required TResult Function(bool shared) loadingNewsAction,
    required TResult Function(bool shared, List<Article> articles)
        loadedNewsAction,
    required TResult Function(String? message, bool shared) error,
  }) {
    return loadedNewsAction(shared, articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shared)? loadNewsAction,
    TResult? Function(bool shared)? loadingNewsAction,
    TResult? Function(bool shared, List<Article> articles)? loadedNewsAction,
    TResult? Function(String? message, bool shared)? error,
  }) {
    return loadedNewsAction?.call(shared, articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shared)? loadNewsAction,
    TResult Function(bool shared)? loadingNewsAction,
    TResult Function(bool shared, List<Article> articles)? loadedNewsAction,
    TResult Function(String? message, bool shared)? error,
    required TResult orElse(),
  }) {
    if (loadedNewsAction != null) {
      return loadedNewsAction(shared, articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSavedNewsAction value) loadNewsAction,
    required TResult Function(LoadingSavedNewsAction value) loadingNewsAction,
    required TResult Function(LoadedSavedNewsAction value) loadedNewsAction,
    required TResult Function(ErrorSavedNewsAction value) error,
  }) {
    return loadedNewsAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSavedNewsAction value)? loadNewsAction,
    TResult? Function(LoadingSavedNewsAction value)? loadingNewsAction,
    TResult? Function(LoadedSavedNewsAction value)? loadedNewsAction,
    TResult? Function(ErrorSavedNewsAction value)? error,
  }) {
    return loadedNewsAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSavedNewsAction value)? loadNewsAction,
    TResult Function(LoadingSavedNewsAction value)? loadingNewsAction,
    TResult Function(LoadedSavedNewsAction value)? loadedNewsAction,
    TResult Function(ErrorSavedNewsAction value)? error,
    required TResult orElse(),
  }) {
    if (loadedNewsAction != null) {
      return loadedNewsAction(this);
    }
    return orElse();
  }
}

abstract class LoadedSavedNewsAction implements SavedNewsActions {
  const factory LoadedSavedNewsAction(
      {final bool shared,
      required final List<Article> articles}) = _$LoadedSavedNewsAction;

  @override
  bool get shared;
  List<Article> get articles;
  @override
  @JsonKey(ignore: true)
  _$$LoadedSavedNewsActionCopyWith<_$LoadedSavedNewsAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorSavedNewsActionCopyWith<$Res>
    implements $SavedNewsActionsCopyWith<$Res> {
  factory _$$ErrorSavedNewsActionCopyWith(_$ErrorSavedNewsAction value,
          $Res Function(_$ErrorSavedNewsAction) then) =
      __$$ErrorSavedNewsActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool shared});
}

/// @nodoc
class __$$ErrorSavedNewsActionCopyWithImpl<$Res>
    extends _$SavedNewsActionsCopyWithImpl<$Res, _$ErrorSavedNewsAction>
    implements _$$ErrorSavedNewsActionCopyWith<$Res> {
  __$$ErrorSavedNewsActionCopyWithImpl(_$ErrorSavedNewsAction _value,
      $Res Function(_$ErrorSavedNewsAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? shared = null,
  }) {
    return _then(_$ErrorSavedNewsAction(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      shared: null == shared
          ? _value.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ErrorSavedNewsAction implements ErrorSavedNewsAction {
  const _$ErrorSavedNewsAction({this.message, required this.shared});

  @override
  final String? message;
  @override
  final bool shared;

  @override
  String toString() {
    return 'SavedNewsActions.error(message: $message, shared: $shared)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSavedNewsAction &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.shared, shared) || other.shared == shared));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, shared);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSavedNewsActionCopyWith<_$ErrorSavedNewsAction> get copyWith =>
      __$$ErrorSavedNewsActionCopyWithImpl<_$ErrorSavedNewsAction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shared) loadNewsAction,
    required TResult Function(bool shared) loadingNewsAction,
    required TResult Function(bool shared, List<Article> articles)
        loadedNewsAction,
    required TResult Function(String? message, bool shared) error,
  }) {
    return error(message, shared);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shared)? loadNewsAction,
    TResult? Function(bool shared)? loadingNewsAction,
    TResult? Function(bool shared, List<Article> articles)? loadedNewsAction,
    TResult? Function(String? message, bool shared)? error,
  }) {
    return error?.call(message, shared);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shared)? loadNewsAction,
    TResult Function(bool shared)? loadingNewsAction,
    TResult Function(bool shared, List<Article> articles)? loadedNewsAction,
    TResult Function(String? message, bool shared)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, shared);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSavedNewsAction value) loadNewsAction,
    required TResult Function(LoadingSavedNewsAction value) loadingNewsAction,
    required TResult Function(LoadedSavedNewsAction value) loadedNewsAction,
    required TResult Function(ErrorSavedNewsAction value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSavedNewsAction value)? loadNewsAction,
    TResult? Function(LoadingSavedNewsAction value)? loadingNewsAction,
    TResult? Function(LoadedSavedNewsAction value)? loadedNewsAction,
    TResult? Function(ErrorSavedNewsAction value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSavedNewsAction value)? loadNewsAction,
    TResult Function(LoadingSavedNewsAction value)? loadingNewsAction,
    TResult Function(LoadedSavedNewsAction value)? loadedNewsAction,
    TResult Function(ErrorSavedNewsAction value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorSavedNewsAction implements SavedNewsActions {
  const factory ErrorSavedNewsAction(
      {final String? message,
      required final bool shared}) = _$ErrorSavedNewsAction;

  String? get message;
  @override
  bool get shared;
  @override
  @JsonKey(ignore: true)
  _$$ErrorSavedNewsActionCopyWith<_$ErrorSavedNewsAction> get copyWith =>
      throw _privateConstructorUsedError;
}
