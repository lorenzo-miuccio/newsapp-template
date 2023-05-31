import 'package:domain/domain.dart';
import 'package:domain/src/redux/actions/settings_actions.dart';
import 'package:redux/redux.dart';

final settingsReducer = combineReducers<Settings>([
  TypedReducer<Settings, UpdatedLanguageAction>(_onUpdatedLanguage),
]);

Settings _onUpdatedLanguage(Settings settings, UpdatedLanguageAction action) {
    return Settings(language: action.locale);
}