// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_update_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateArticleActions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool save) saveOrUnSave,
    required TResult Function(bool share) shareOrUnShare,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool save)? saveOrUnSave,
    TResult? Function(bool share)? shareOrUnShare,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool save)? saveOrUnSave,
    TResult Function(bool share)? shareOrUnShare,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveOrUnSaveArticleAction value) saveOrUnSave,
    required TResult Function(ShareOrUnShareArticleAction value) shareOrUnShare,
    required TResult Function(ErrorUpdateAction value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult? Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult? Function(ErrorUpdateAction value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult Function(ErrorUpdateAction value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArticleActionsCopyWith<$Res> {
  factory $UpdateArticleActionsCopyWith(UpdateArticleActions value,
          $Res Function(UpdateArticleActions) then) =
      _$UpdateArticleActionsCopyWithImpl<$Res, UpdateArticleActions>;
}

/// @nodoc
class _$UpdateArticleActionsCopyWithImpl<$Res,
        $Val extends UpdateArticleActions>
    implements $UpdateArticleActionsCopyWith<$Res> {
  _$UpdateArticleActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SaveOrUnSaveArticleActionCopyWith<$Res> {
  factory _$$SaveOrUnSaveArticleActionCopyWith(
          _$SaveOrUnSaveArticleAction value,
          $Res Function(_$SaveOrUnSaveArticleAction) then) =
      __$$SaveOrUnSaveArticleActionCopyWithImpl<$Res>;
  @useResult
  $Res call({bool save});
}

/// @nodoc
class __$$SaveOrUnSaveArticleActionCopyWithImpl<$Res>
    extends _$UpdateArticleActionsCopyWithImpl<$Res,
        _$SaveOrUnSaveArticleAction>
    implements _$$SaveOrUnSaveArticleActionCopyWith<$Res> {
  __$$SaveOrUnSaveArticleActionCopyWithImpl(_$SaveOrUnSaveArticleAction _value,
      $Res Function(_$SaveOrUnSaveArticleAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? save = null,
  }) {
    return _then(_$SaveOrUnSaveArticleAction(
      save: null == save
          ? _value.save
          : save // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SaveOrUnSaveArticleAction implements SaveOrUnSaveArticleAction {
  const _$SaveOrUnSaveArticleAction({required this.save});

  @override
  final bool save;

  @override
  String toString() {
    return 'UpdateArticleActions.saveOrUnSave(save: $save)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveOrUnSaveArticleAction &&
            (identical(other.save, save) || other.save == save));
  }

  @override
  int get hashCode => Object.hash(runtimeType, save);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveOrUnSaveArticleActionCopyWith<_$SaveOrUnSaveArticleAction>
      get copyWith => __$$SaveOrUnSaveArticleActionCopyWithImpl<
          _$SaveOrUnSaveArticleAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool save) saveOrUnSave,
    required TResult Function(bool share) shareOrUnShare,
    required TResult Function(String? message) error,
  }) {
    return saveOrUnSave(save);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool save)? saveOrUnSave,
    TResult? Function(bool share)? shareOrUnShare,
    TResult? Function(String? message)? error,
  }) {
    return saveOrUnSave?.call(save);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool save)? saveOrUnSave,
    TResult Function(bool share)? shareOrUnShare,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (saveOrUnSave != null) {
      return saveOrUnSave(save);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveOrUnSaveArticleAction value) saveOrUnSave,
    required TResult Function(ShareOrUnShareArticleAction value) shareOrUnShare,
    required TResult Function(ErrorUpdateAction value) error,
  }) {
    return saveOrUnSave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult? Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult? Function(ErrorUpdateAction value)? error,
  }) {
    return saveOrUnSave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult Function(ErrorUpdateAction value)? error,
    required TResult orElse(),
  }) {
    if (saveOrUnSave != null) {
      return saveOrUnSave(this);
    }
    return orElse();
  }
}

abstract class SaveOrUnSaveArticleAction implements UpdateArticleActions {
  const factory SaveOrUnSaveArticleAction({required final bool save}) =
      _$SaveOrUnSaveArticleAction;

  bool get save;
  @JsonKey(ignore: true)
  _$$SaveOrUnSaveArticleActionCopyWith<_$SaveOrUnSaveArticleAction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareOrUnShareArticleActionCopyWith<$Res> {
  factory _$$ShareOrUnShareArticleActionCopyWith(
          _$ShareOrUnShareArticleAction value,
          $Res Function(_$ShareOrUnShareArticleAction) then) =
      __$$ShareOrUnShareArticleActionCopyWithImpl<$Res>;
  @useResult
  $Res call({bool share});
}

/// @nodoc
class __$$ShareOrUnShareArticleActionCopyWithImpl<$Res>
    extends _$UpdateArticleActionsCopyWithImpl<$Res,
        _$ShareOrUnShareArticleAction>
    implements _$$ShareOrUnShareArticleActionCopyWith<$Res> {
  __$$ShareOrUnShareArticleActionCopyWithImpl(
      _$ShareOrUnShareArticleAction _value,
      $Res Function(_$ShareOrUnShareArticleAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? share = null,
  }) {
    return _then(_$ShareOrUnShareArticleAction(
      share: null == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShareOrUnShareArticleAction implements ShareOrUnShareArticleAction {
  const _$ShareOrUnShareArticleAction({required this.share});

  @override
  final bool share;

  @override
  String toString() {
    return 'UpdateArticleActions.shareOrUnShare(share: $share)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareOrUnShareArticleAction &&
            (identical(other.share, share) || other.share == share));
  }

  @override
  int get hashCode => Object.hash(runtimeType, share);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareOrUnShareArticleActionCopyWith<_$ShareOrUnShareArticleAction>
      get copyWith => __$$ShareOrUnShareArticleActionCopyWithImpl<
          _$ShareOrUnShareArticleAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool save) saveOrUnSave,
    required TResult Function(bool share) shareOrUnShare,
    required TResult Function(String? message) error,
  }) {
    return shareOrUnShare(share);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool save)? saveOrUnSave,
    TResult? Function(bool share)? shareOrUnShare,
    TResult? Function(String? message)? error,
  }) {
    return shareOrUnShare?.call(share);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool save)? saveOrUnSave,
    TResult Function(bool share)? shareOrUnShare,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (shareOrUnShare != null) {
      return shareOrUnShare(share);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveOrUnSaveArticleAction value) saveOrUnSave,
    required TResult Function(ShareOrUnShareArticleAction value) shareOrUnShare,
    required TResult Function(ErrorUpdateAction value) error,
  }) {
    return shareOrUnShare(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult? Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult? Function(ErrorUpdateAction value)? error,
  }) {
    return shareOrUnShare?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult Function(ErrorUpdateAction value)? error,
    required TResult orElse(),
  }) {
    if (shareOrUnShare != null) {
      return shareOrUnShare(this);
    }
    return orElse();
  }
}

abstract class ShareOrUnShareArticleAction implements UpdateArticleActions {
  const factory ShareOrUnShareArticleAction({required final bool share}) =
      _$ShareOrUnShareArticleAction;

  bool get share;
  @JsonKey(ignore: true)
  _$$ShareOrUnShareArticleActionCopyWith<_$ShareOrUnShareArticleAction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorUpdateActionCopyWith<$Res> {
  factory _$$ErrorUpdateActionCopyWith(
          _$ErrorUpdateAction value, $Res Function(_$ErrorUpdateAction) then) =
      __$$ErrorUpdateActionCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorUpdateActionCopyWithImpl<$Res>
    extends _$UpdateArticleActionsCopyWithImpl<$Res, _$ErrorUpdateAction>
    implements _$$ErrorUpdateActionCopyWith<$Res> {
  __$$ErrorUpdateActionCopyWithImpl(
      _$ErrorUpdateAction _value, $Res Function(_$ErrorUpdateAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorUpdateAction(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorUpdateAction implements ErrorUpdateAction {
  const _$ErrorUpdateAction({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'UpdateArticleActions.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorUpdateAction &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorUpdateActionCopyWith<_$ErrorUpdateAction> get copyWith =>
      __$$ErrorUpdateActionCopyWithImpl<_$ErrorUpdateAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool save) saveOrUnSave,
    required TResult Function(bool share) shareOrUnShare,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool save)? saveOrUnSave,
    TResult? Function(bool share)? shareOrUnShare,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool save)? saveOrUnSave,
    TResult Function(bool share)? shareOrUnShare,
    TResult Function(String? message)? error,
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
    required TResult Function(SaveOrUnSaveArticleAction value) saveOrUnSave,
    required TResult Function(ShareOrUnShareArticleAction value) shareOrUnShare,
    required TResult Function(ErrorUpdateAction value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult? Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult? Function(ErrorUpdateAction value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult Function(ErrorUpdateAction value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorUpdateAction implements UpdateArticleActions {
  const factory ErrorUpdateAction({final String? message}) =
      _$ErrorUpdateAction;

  String? get message;
  @JsonKey(ignore: true)
  _$$ErrorUpdateActionCopyWith<_$ErrorUpdateAction> get copyWith =>
      throw _privateConstructorUsedError;
}
