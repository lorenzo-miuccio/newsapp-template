import 'package:domain/src/redux/app_state.dart';
import 'package:domain/src/redux/reducers/topnews_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
      everyThingNewsState: everythingNewsReducer(state.everyThingNewsState, action),
      topNewsState: topNewsReducer(state.topNewsState, action),
      settingsState: state.settingsState,
      articleUpdateState: state.articleUpdateState);
}
