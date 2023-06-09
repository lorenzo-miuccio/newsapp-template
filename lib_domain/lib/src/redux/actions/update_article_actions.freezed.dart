// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_article_actions.dart';

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
    required TResult Function(Article article) saveOrUnSave,
    required TResult Function(Article article) shareOrUnShare,
    required TResult Function(bool status) saveStatusChanged,
    required TResult Function(bool status) shareStatusChanged,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Article article)? saveOrUnSave,
    TResult? Function(Article article)? shareOrUnShare,
    TResult? Function(bool status)? saveStatusChanged,
    TResult? Function(bool status)? shareStatusChanged,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Article article)? saveOrUnSave,
    TResult Function(Article article)? shareOrUnShare,
    TResult Function(bool status)? saveStatusChanged,
    TResult Function(bool status)? shareStatusChanged,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveOrUnSaveArticleAction value) saveOrUnSave,
    required TResult Function(ShareOrUnShareArticleAction value) shareOrUnShare,
    required TResult Function(SaveStatusAction value) saveStatusChanged,
    required TResult Function(ShareStatusAction value) shareStatusChanged,
    required TResult Function(ErrorUpdateAction value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult? Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult? Function(SaveStatusAction value)? saveStatusChanged,
    TResult? Function(ShareStatusAction value)? shareStatusChanged,
    TResult? Function(ErrorUpdateAction value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult Function(SaveStatusAction value)? saveStatusChanged,
    TResult Function(ShareStatusAction value)? shareStatusChanged,
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
  $Res call({Article article});

  $ArticleCopyWith<$Res> get article;
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
    Object? article = null,
  }) {
    return _then(_$SaveOrUnSaveArticleAction(
      null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleCopyWith<$Res> get article {
    return $ArticleCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value));
    });
  }
}

/// @nodoc

class _$SaveOrUnSaveArticleAction implements SaveOrUnSaveArticleAction {
  const _$SaveOrUnSaveArticleAction(this.article);

  @override
  final Article article;

  @override
  String toString() {
    return 'UpdateArticleActions.saveOrUnSave(article: $article)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveOrUnSaveArticleAction &&
            (identical(other.article, article) || other.article == article));
  }

  @override
  int get hashCode => Object.hash(runtimeType, article);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveOrUnSaveArticleActionCopyWith<_$SaveOrUnSaveArticleAction>
      get copyWith => __$$SaveOrUnSaveArticleActionCopyWithImpl<
          _$SaveOrUnSaveArticleAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Article article) saveOrUnSave,
    required TResult Function(Article article) shareOrUnShare,
    required TResult Function(bool status) saveStatusChanged,
    required TResult Function(bool status) shareStatusChanged,
    required TResult Function(String? message) error,
  }) {
    return saveOrUnSave(article);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Article article)? saveOrUnSave,
    TResult? Function(Article article)? shareOrUnShare,
    TResult? Function(bool status)? saveStatusChanged,
    TResult? Function(bool status)? shareStatusChanged,
    TResult? Function(String? message)? error,
  }) {
    return saveOrUnSave?.call(article);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Article article)? saveOrUnSave,
    TResult Function(Article article)? shareOrUnShare,
    TResult Function(bool status)? saveStatusChanged,
    TResult Function(bool status)? shareStatusChanged,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (saveOrUnSave != null) {
      return saveOrUnSave(article);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveOrUnSaveArticleAction value) saveOrUnSave,
    required TResult Function(ShareOrUnShareArticleAction value) shareOrUnShare,
    required TResult Function(SaveStatusAction value) saveStatusChanged,
    required TResult Function(ShareStatusAction value) shareStatusChanged,
    required TResult Function(ErrorUpdateAction value) error,
  }) {
    return saveOrUnSave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult? Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult? Function(SaveStatusAction value)? saveStatusChanged,
    TResult? Function(ShareStatusAction value)? shareStatusChanged,
    TResult? Function(ErrorUpdateAction value)? error,
  }) {
    return saveOrUnSave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult Function(SaveStatusAction value)? saveStatusChanged,
    TResult Function(ShareStatusAction value)? shareStatusChanged,
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
  const factory SaveOrUnSaveArticleAction(final Article article) =
      _$SaveOrUnSaveArticleAction;

  Article get article;
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
  $Res call({Article article});

  $ArticleCopyWith<$Res> get article;
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
    Object? article = null,
  }) {
    return _then(_$ShareOrUnShareArticleAction(
      null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleCopyWith<$Res> get article {
    return $ArticleCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value));
    });
  }
}

/// @nodoc

class _$ShareOrUnShareArticleAction implements ShareOrUnShareArticleAction {
  const _$ShareOrUnShareArticleAction(this.article);

  @override
  final Article article;

  @override
  String toString() {
    return 'UpdateArticleActions.shareOrUnShare(article: $article)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareOrUnShareArticleAction &&
            (identical(other.article, article) || other.article == article));
  }

  @override
  int get hashCode => Object.hash(runtimeType, article);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareOrUnShareArticleActionCopyWith<_$ShareOrUnShareArticleAction>
      get copyWith => __$$ShareOrUnShareArticleActionCopyWithImpl<
          _$ShareOrUnShareArticleAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Article article) saveOrUnSave,
    required TResult Function(Article article) shareOrUnShare,
    required TResult Function(bool status) saveStatusChanged,
    required TResult Function(bool status) shareStatusChanged,
    required TResult Function(String? message) error,
  }) {
    return shareOrUnShare(article);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Article article)? saveOrUnSave,
    TResult? Function(Article article)? shareOrUnShare,
    TResult? Function(bool status)? saveStatusChanged,
    TResult? Function(bool status)? shareStatusChanged,
    TResult? Function(String? message)? error,
  }) {
    return shareOrUnShare?.call(article);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Article article)? saveOrUnSave,
    TResult Function(Article article)? shareOrUnShare,
    TResult Function(bool status)? saveStatusChanged,
    TResult Function(bool status)? shareStatusChanged,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (shareOrUnShare != null) {
      return shareOrUnShare(article);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveOrUnSaveArticleAction value) saveOrUnSave,
    required TResult Function(ShareOrUnShareArticleAction value) shareOrUnShare,
    required TResult Function(SaveStatusAction value) saveStatusChanged,
    required TResult Function(ShareStatusAction value) shareStatusChanged,
    required TResult Function(ErrorUpdateAction value) error,
  }) {
    return shareOrUnShare(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult? Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult? Function(SaveStatusAction value)? saveStatusChanged,
    TResult? Function(ShareStatusAction value)? shareStatusChanged,
    TResult? Function(ErrorUpdateAction value)? error,
  }) {
    return shareOrUnShare?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult Function(SaveStatusAction value)? saveStatusChanged,
    TResult Function(ShareStatusAction value)? shareStatusChanged,
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
  const factory ShareOrUnShareArticleAction(final Article article) =
      _$ShareOrUnShareArticleAction;

  Article get article;
  @JsonKey(ignore: true)
  _$$ShareOrUnShareArticleActionCopyWith<_$ShareOrUnShareArticleAction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveStatusActionCopyWith<$Res> {
  factory _$$SaveStatusActionCopyWith(
          _$SaveStatusAction value, $Res Function(_$SaveStatusAction) then) =
      __$$SaveStatusActionCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$SaveStatusActionCopyWithImpl<$Res>
    extends _$UpdateArticleActionsCopyWithImpl<$Res, _$SaveStatusAction>
    implements _$$SaveStatusActionCopyWith<$Res> {
  __$$SaveStatusActionCopyWithImpl(
      _$SaveStatusAction _value, $Res Function(_$SaveStatusAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$SaveStatusAction(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SaveStatusAction implements SaveStatusAction {
  const _$SaveStatusAction({required this.status});

  @override
  final bool status;

  @override
  String toString() {
    return 'UpdateArticleActions.saveStatusChanged(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveStatusAction &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveStatusActionCopyWith<_$SaveStatusAction> get copyWith =>
      __$$SaveStatusActionCopyWithImpl<_$SaveStatusAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Article article) saveOrUnSave,
    required TResult Function(Article article) shareOrUnShare,
    required TResult Function(bool status) saveStatusChanged,
    required TResult Function(bool status) shareStatusChanged,
    required TResult Function(String? message) error,
  }) {
    return saveStatusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Article article)? saveOrUnSave,
    TResult? Function(Article article)? shareOrUnShare,
    TResult? Function(bool status)? saveStatusChanged,
    TResult? Function(bool status)? shareStatusChanged,
    TResult? Function(String? message)? error,
  }) {
    return saveStatusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Article article)? saveOrUnSave,
    TResult Function(Article article)? shareOrUnShare,
    TResult Function(bool status)? saveStatusChanged,
    TResult Function(bool status)? shareStatusChanged,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (saveStatusChanged != null) {
      return saveStatusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveOrUnSaveArticleAction value) saveOrUnSave,
    required TResult Function(ShareOrUnShareArticleAction value) shareOrUnShare,
    required TResult Function(SaveStatusAction value) saveStatusChanged,
    required TResult Function(ShareStatusAction value) shareStatusChanged,
    required TResult Function(ErrorUpdateAction value) error,
  }) {
    return saveStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult? Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult? Function(SaveStatusAction value)? saveStatusChanged,
    TResult? Function(ShareStatusAction value)? shareStatusChanged,
    TResult? Function(ErrorUpdateAction value)? error,
  }) {
    return saveStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult Function(SaveStatusAction value)? saveStatusChanged,
    TResult Function(ShareStatusAction value)? shareStatusChanged,
    TResult Function(ErrorUpdateAction value)? error,
    required TResult orElse(),
  }) {
    if (saveStatusChanged != null) {
      return saveStatusChanged(this);
    }
    return orElse();
  }
}

abstract class SaveStatusAction implements UpdateArticleActions {
  const factory SaveStatusAction({required final bool status}) =
      _$SaveStatusAction;

  bool get status;
  @JsonKey(ignore: true)
  _$$SaveStatusActionCopyWith<_$SaveStatusAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareStatusActionCopyWith<$Res> {
  factory _$$ShareStatusActionCopyWith(
          _$ShareStatusAction value, $Res Function(_$ShareStatusAction) then) =
      __$$ShareStatusActionCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$ShareStatusActionCopyWithImpl<$Res>
    extends _$UpdateArticleActionsCopyWithImpl<$Res, _$ShareStatusAction>
    implements _$$ShareStatusActionCopyWith<$Res> {
  __$$ShareStatusActionCopyWithImpl(
      _$ShareStatusAction _value, $Res Function(_$ShareStatusAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ShareStatusAction(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShareStatusAction implements ShareStatusAction {
  const _$ShareStatusAction({required this.status});

  @override
  final bool status;

  @override
  String toString() {
    return 'UpdateArticleActions.shareStatusChanged(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareStatusAction &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareStatusActionCopyWith<_$ShareStatusAction> get copyWith =>
      __$$ShareStatusActionCopyWithImpl<_$ShareStatusAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Article article) saveOrUnSave,
    required TResult Function(Article article) shareOrUnShare,
    required TResult Function(bool status) saveStatusChanged,
    required TResult Function(bool status) shareStatusChanged,
    required TResult Function(String? message) error,
  }) {
    return shareStatusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Article article)? saveOrUnSave,
    TResult? Function(Article article)? shareOrUnShare,
    TResult? Function(bool status)? saveStatusChanged,
    TResult? Function(bool status)? shareStatusChanged,
    TResult? Function(String? message)? error,
  }) {
    return shareStatusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Article article)? saveOrUnSave,
    TResult Function(Article article)? shareOrUnShare,
    TResult Function(bool status)? saveStatusChanged,
    TResult Function(bool status)? shareStatusChanged,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (shareStatusChanged != null) {
      return shareStatusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveOrUnSaveArticleAction value) saveOrUnSave,
    required TResult Function(ShareOrUnShareArticleAction value) shareOrUnShare,
    required TResult Function(SaveStatusAction value) saveStatusChanged,
    required TResult Function(ShareStatusAction value) shareStatusChanged,
    required TResult Function(ErrorUpdateAction value) error,
  }) {
    return shareStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult? Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult? Function(SaveStatusAction value)? saveStatusChanged,
    TResult? Function(ShareStatusAction value)? shareStatusChanged,
    TResult? Function(ErrorUpdateAction value)? error,
  }) {
    return shareStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult Function(SaveStatusAction value)? saveStatusChanged,
    TResult Function(ShareStatusAction value)? shareStatusChanged,
    TResult Function(ErrorUpdateAction value)? error,
    required TResult orElse(),
  }) {
    if (shareStatusChanged != null) {
      return shareStatusChanged(this);
    }
    return orElse();
  }
}

abstract class ShareStatusAction implements UpdateArticleActions {
  const factory ShareStatusAction({required final bool status}) =
      _$ShareStatusAction;

  bool get status;
  @JsonKey(ignore: true)
  _$$ShareStatusActionCopyWith<_$ShareStatusAction> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(Article article) saveOrUnSave,
    required TResult Function(Article article) shareOrUnShare,
    required TResult Function(bool status) saveStatusChanged,
    required TResult Function(bool status) shareStatusChanged,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Article article)? saveOrUnSave,
    TResult? Function(Article article)? shareOrUnShare,
    TResult? Function(bool status)? saveStatusChanged,
    TResult? Function(bool status)? shareStatusChanged,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Article article)? saveOrUnSave,
    TResult Function(Article article)? shareOrUnShare,
    TResult Function(bool status)? saveStatusChanged,
    TResult Function(bool status)? shareStatusChanged,
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
    required TResult Function(SaveStatusAction value) saveStatusChanged,
    required TResult Function(ShareStatusAction value) shareStatusChanged,
    required TResult Function(ErrorUpdateAction value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult? Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult? Function(SaveStatusAction value)? saveStatusChanged,
    TResult? Function(ShareStatusAction value)? shareStatusChanged,
    TResult? Function(ErrorUpdateAction value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveOrUnSaveArticleAction value)? saveOrUnSave,
    TResult Function(ShareOrUnShareArticleAction value)? shareOrUnShare,
    TResult Function(SaveStatusAction value)? saveStatusChanged,
    TResult Function(ShareStatusAction value)? shareStatusChanged,
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
