// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topnews_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopNewsActions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool forceRemoteFetch) loadTopNewsAction,
    required TResult Function(List<Article> topNews) loadedTopNewsAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool forceRemoteFetch)? loadTopNewsAction,
    TResult? Function(List<Article> topNews)? loadedTopNewsAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool forceRemoteFetch)? loadTopNewsAction,
    TResult Function(List<Article> topNews)? loadedTopNewsAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTopNewsAction value) loadTopNewsAction,
    required TResult Function(_LoadedTopNewsActions value) loadedTopNewsAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTopNewsAction value)? loadTopNewsAction,
    TResult? Function(_LoadedTopNewsActions value)? loadedTopNewsAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTopNewsAction value)? loadTopNewsAction,
    TResult Function(_LoadedTopNewsActions value)? loadedTopNewsAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopNewsActionsCopyWith<$Res> {
  factory $TopNewsActionsCopyWith(
          TopNewsActions value, $Res Function(TopNewsActions) then) =
      _$TopNewsActionsCopyWithImpl<$Res, TopNewsActions>;
}

/// @nodoc
class _$TopNewsActionsCopyWithImpl<$Res, $Val extends TopNewsActions>
    implements $TopNewsActionsCopyWith<$Res> {
  _$TopNewsActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadTopNewsActionCopyWith<$Res> {
  factory _$$_LoadTopNewsActionCopyWith(_$_LoadTopNewsAction value,
          $Res Function(_$_LoadTopNewsAction) then) =
      __$$_LoadTopNewsActionCopyWithImpl<$Res>;
  @useResult
  $Res call({bool forceRemoteFetch});
}

/// @nodoc
class __$$_LoadTopNewsActionCopyWithImpl<$Res>
    extends _$TopNewsActionsCopyWithImpl<$Res, _$_LoadTopNewsAction>
    implements _$$_LoadTopNewsActionCopyWith<$Res> {
  __$$_LoadTopNewsActionCopyWithImpl(
      _$_LoadTopNewsAction _value, $Res Function(_$_LoadTopNewsAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forceRemoteFetch = null,
  }) {
    return _then(_$_LoadTopNewsAction(
      forceRemoteFetch: null == forceRemoteFetch
          ? _value.forceRemoteFetch
          : forceRemoteFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadTopNewsAction implements _LoadTopNewsAction {
  const _$_LoadTopNewsAction({this.forceRemoteFetch = false});

  @override
  @JsonKey()
  final bool forceRemoteFetch;

  @override
  String toString() {
    return 'TopNewsActions.loadTopNewsAction(forceRemoteFetch: $forceRemoteFetch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadTopNewsAction &&
            (identical(other.forceRemoteFetch, forceRemoteFetch) ||
                other.forceRemoteFetch == forceRemoteFetch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forceRemoteFetch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadTopNewsActionCopyWith<_$_LoadTopNewsAction> get copyWith =>
      __$$_LoadTopNewsActionCopyWithImpl<_$_LoadTopNewsAction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool forceRemoteFetch) loadTopNewsAction,
    required TResult Function(List<Article> topNews) loadedTopNewsAction,
  }) {
    return loadTopNewsAction(forceRemoteFetch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool forceRemoteFetch)? loadTopNewsAction,
    TResult? Function(List<Article> topNews)? loadedTopNewsAction,
  }) {
    return loadTopNewsAction?.call(forceRemoteFetch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool forceRemoteFetch)? loadTopNewsAction,
    TResult Function(List<Article> topNews)? loadedTopNewsAction,
    required TResult orElse(),
  }) {
    if (loadTopNewsAction != null) {
      return loadTopNewsAction(forceRemoteFetch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTopNewsAction value) loadTopNewsAction,
    required TResult Function(_LoadedTopNewsActions value) loadedTopNewsAction,
  }) {
    return loadTopNewsAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTopNewsAction value)? loadTopNewsAction,
    TResult? Function(_LoadedTopNewsActions value)? loadedTopNewsAction,
  }) {
    return loadTopNewsAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTopNewsAction value)? loadTopNewsAction,
    TResult Function(_LoadedTopNewsActions value)? loadedTopNewsAction,
    required TResult orElse(),
  }) {
    if (loadTopNewsAction != null) {
      return loadTopNewsAction(this);
    }
    return orElse();
  }
}

abstract class _LoadTopNewsAction implements TopNewsActions {
  const factory _LoadTopNewsAction({final bool forceRemoteFetch}) =
      _$_LoadTopNewsAction;

  bool get forceRemoteFetch;
  @JsonKey(ignore: true)
  _$$_LoadTopNewsActionCopyWith<_$_LoadTopNewsAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedTopNewsActionsCopyWith<$Res> {
  factory _$$_LoadedTopNewsActionsCopyWith(_$_LoadedTopNewsActions value,
          $Res Function(_$_LoadedTopNewsActions) then) =
      __$$_LoadedTopNewsActionsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article> topNews});
}

/// @nodoc
class __$$_LoadedTopNewsActionsCopyWithImpl<$Res>
    extends _$TopNewsActionsCopyWithImpl<$Res, _$_LoadedTopNewsActions>
    implements _$$_LoadedTopNewsActionsCopyWith<$Res> {
  __$$_LoadedTopNewsActionsCopyWithImpl(_$_LoadedTopNewsActions _value,
      $Res Function(_$_LoadedTopNewsActions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topNews = null,
  }) {
    return _then(_$_LoadedTopNewsActions(
      null == topNews
          ? _value._topNews
          : topNews // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$_LoadedTopNewsActions implements _LoadedTopNewsActions {
  const _$_LoadedTopNewsActions(final List<Article> topNews)
      : _topNews = topNews;

  final List<Article> _topNews;
  @override
  List<Article> get topNews {
    if (_topNews is EqualUnmodifiableListView) return _topNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topNews);
  }

  @override
  String toString() {
    return 'TopNewsActions.loadedTopNewsAction(topNews: $topNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedTopNewsActions &&
            const DeepCollectionEquality().equals(other._topNews, _topNews));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topNews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedTopNewsActionsCopyWith<_$_LoadedTopNewsActions> get copyWith =>
      __$$_LoadedTopNewsActionsCopyWithImpl<_$_LoadedTopNewsActions>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool forceRemoteFetch) loadTopNewsAction,
    required TResult Function(List<Article> topNews) loadedTopNewsAction,
  }) {
    return loadedTopNewsAction(topNews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool forceRemoteFetch)? loadTopNewsAction,
    TResult? Function(List<Article> topNews)? loadedTopNewsAction,
  }) {
    return loadedTopNewsAction?.call(topNews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool forceRemoteFetch)? loadTopNewsAction,
    TResult Function(List<Article> topNews)? loadedTopNewsAction,
    required TResult orElse(),
  }) {
    if (loadedTopNewsAction != null) {
      return loadedTopNewsAction(topNews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadTopNewsAction value) loadTopNewsAction,
    required TResult Function(_LoadedTopNewsActions value) loadedTopNewsAction,
  }) {
    return loadedTopNewsAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadTopNewsAction value)? loadTopNewsAction,
    TResult? Function(_LoadedTopNewsActions value)? loadedTopNewsAction,
  }) {
    return loadedTopNewsAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadTopNewsAction value)? loadTopNewsAction,
    TResult Function(_LoadedTopNewsActions value)? loadedTopNewsAction,
    required TResult orElse(),
  }) {
    if (loadedTopNewsAction != null) {
      return loadedTopNewsAction(this);
    }
    return orElse();
  }
}

abstract class _LoadedTopNewsActions implements TopNewsActions {
  const factory _LoadedTopNewsActions(final List<Article> topNews) =
      _$_LoadedTopNewsActions;

  List<Article> get topNews;
  @JsonKey(ignore: true)
  _$$_LoadedTopNewsActionsCopyWith<_$_LoadedTopNewsActions> get copyWith =>
      throw _privateConstructorUsedError;
}
