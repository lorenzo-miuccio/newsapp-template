// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsActions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Language newLocale) updateLanguage,
    required TResult Function(Language locale) updatedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Language newLocale)? updateLanguage,
    TResult? Function(Language locale)? updatedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Language newLocale)? updateLanguage,
    TResult Function(Language locale)? updatedLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateLanguageAction value) updateLanguage,
    required TResult Function(UpdatedLanguageAction value) updatedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateLanguageAction value)? updateLanguage,
    TResult? Function(UpdatedLanguageAction value)? updatedLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateLanguageAction value)? updateLanguage,
    TResult Function(UpdatedLanguageAction value)? updatedLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsActionsCopyWith<$Res> {
  factory $SettingsActionsCopyWith(
          SettingsActions value, $Res Function(SettingsActions) then) =
      _$SettingsActionsCopyWithImpl<$Res, SettingsActions>;
}

/// @nodoc
class _$SettingsActionsCopyWithImpl<$Res, $Val extends SettingsActions>
    implements $SettingsActionsCopyWith<$Res> {
  _$SettingsActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateLanguageActionCopyWith<$Res> {
  factory _$$UpdateLanguageActionCopyWith(_$UpdateLanguageAction value,
          $Res Function(_$UpdateLanguageAction) then) =
      __$$UpdateLanguageActionCopyWithImpl<$Res>;
  @useResult
  $Res call({Language newLocale});
}

/// @nodoc
class __$$UpdateLanguageActionCopyWithImpl<$Res>
    extends _$SettingsActionsCopyWithImpl<$Res, _$UpdateLanguageAction>
    implements _$$UpdateLanguageActionCopyWith<$Res> {
  __$$UpdateLanguageActionCopyWithImpl(_$UpdateLanguageAction _value,
      $Res Function(_$UpdateLanguageAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newLocale = null,
  }) {
    return _then(_$UpdateLanguageAction(
      null == newLocale
          ? _value.newLocale
          : newLocale // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc

class _$UpdateLanguageAction implements UpdateLanguageAction {
  const _$UpdateLanguageAction(this.newLocale);

  @override
  final Language newLocale;

  @override
  String toString() {
    return 'SettingsActions.updateLanguage(newLocale: $newLocale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLanguageAction &&
            (identical(other.newLocale, newLocale) ||
                other.newLocale == newLocale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newLocale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLanguageActionCopyWith<_$UpdateLanguageAction> get copyWith =>
      __$$UpdateLanguageActionCopyWithImpl<_$UpdateLanguageAction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Language newLocale) updateLanguage,
    required TResult Function(Language locale) updatedLanguage,
  }) {
    return updateLanguage(newLocale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Language newLocale)? updateLanguage,
    TResult? Function(Language locale)? updatedLanguage,
  }) {
    return updateLanguage?.call(newLocale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Language newLocale)? updateLanguage,
    TResult Function(Language locale)? updatedLanguage,
    required TResult orElse(),
  }) {
    if (updateLanguage != null) {
      return updateLanguage(newLocale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateLanguageAction value) updateLanguage,
    required TResult Function(UpdatedLanguageAction value) updatedLanguage,
  }) {
    return updateLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateLanguageAction value)? updateLanguage,
    TResult? Function(UpdatedLanguageAction value)? updatedLanguage,
  }) {
    return updateLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateLanguageAction value)? updateLanguage,
    TResult Function(UpdatedLanguageAction value)? updatedLanguage,
    required TResult orElse(),
  }) {
    if (updateLanguage != null) {
      return updateLanguage(this);
    }
    return orElse();
  }
}

abstract class UpdateLanguageAction implements SettingsActions {
  const factory UpdateLanguageAction(final Language newLocale) =
      _$UpdateLanguageAction;

  Language get newLocale;
  @JsonKey(ignore: true)
  _$$UpdateLanguageActionCopyWith<_$UpdateLanguageAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedLanguageActionCopyWith<$Res> {
  factory _$$UpdatedLanguageActionCopyWith(_$UpdatedLanguageAction value,
          $Res Function(_$UpdatedLanguageAction) then) =
      __$$UpdatedLanguageActionCopyWithImpl<$Res>;
  @useResult
  $Res call({Language locale});
}

/// @nodoc
class __$$UpdatedLanguageActionCopyWithImpl<$Res>
    extends _$SettingsActionsCopyWithImpl<$Res, _$UpdatedLanguageAction>
    implements _$$UpdatedLanguageActionCopyWith<$Res> {
  __$$UpdatedLanguageActionCopyWithImpl(_$UpdatedLanguageAction _value,
      $Res Function(_$UpdatedLanguageAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$UpdatedLanguageAction(
      null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc

class _$UpdatedLanguageAction implements UpdatedLanguageAction {
  const _$UpdatedLanguageAction(this.locale);

  @override
  final Language locale;

  @override
  String toString() {
    return 'SettingsActions.updatedLanguage(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedLanguageAction &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedLanguageActionCopyWith<_$UpdatedLanguageAction> get copyWith =>
      __$$UpdatedLanguageActionCopyWithImpl<_$UpdatedLanguageAction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Language newLocale) updateLanguage,
    required TResult Function(Language locale) updatedLanguage,
  }) {
    return updatedLanguage(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Language newLocale)? updateLanguage,
    TResult? Function(Language locale)? updatedLanguage,
  }) {
    return updatedLanguage?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Language newLocale)? updateLanguage,
    TResult Function(Language locale)? updatedLanguage,
    required TResult orElse(),
  }) {
    if (updatedLanguage != null) {
      return updatedLanguage(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateLanguageAction value) updateLanguage,
    required TResult Function(UpdatedLanguageAction value) updatedLanguage,
  }) {
    return updatedLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateLanguageAction value)? updateLanguage,
    TResult? Function(UpdatedLanguageAction value)? updatedLanguage,
  }) {
    return updatedLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateLanguageAction value)? updateLanguage,
    TResult Function(UpdatedLanguageAction value)? updatedLanguage,
    required TResult orElse(),
  }) {
    if (updatedLanguage != null) {
      return updatedLanguage(this);
    }
    return orElse();
  }
}

abstract class UpdatedLanguageAction implements SettingsActions {
  const factory UpdatedLanguageAction(final Language locale) =
      _$UpdatedLanguageAction;

  Language get locale;
  @JsonKey(ignore: true)
  _$$UpdatedLanguageActionCopyWith<_$UpdatedLanguageAction> get copyWith =>
      throw _privateConstructorUsedError;
}
