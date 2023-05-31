import 'package:domain/domain.dart';
import 'package:domain/src/redux/actions/article_update_actions.dart';
import 'package:domain/src/redux/actions/settings_actions.dart';
import 'package:redux/redux.dart';

class SettingsMiddleware implements MiddlewareClass<AppState> {
  final LanguageRepository _repository;

  SettingsMiddleware(this._repository);

  @override
  call(Store<AppState> store, action, NextDispatcher next) {
    if (action is SettingsActions) {
      action.whenOrNull(updateLanguage: (language) {
        _repository.updateLanguage(language.name);
        store.dispatch(SettingsActions.updatedLanguage(language));
      });
    }
    next(action);
  }
}
