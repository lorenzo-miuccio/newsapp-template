import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_actions.freezed.dart';


@freezed
class SettingsActions with _$SettingsActions {
  const factory SettingsActions.updateLanguage(Language newLocale) = UpdateLanguageAction;

  const factory SettingsActions.updatedLanguage(Language locale) = UpdatedLanguageAction;
}
