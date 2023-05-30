import 'package:domain/src/redux/app_state.dart';

AppState appReducer(AppState state, action) {
  return AppState(everyThingNewsState: null, topNewsState: null, settingsState: null, articleUpdateState: null);
}