import 'package:domain/src/redux/app_state.dart';
import 'package:domain/src/redux/reducers/article_update_reducer.dart';
import 'package:domain/src/redux/reducers/news_reducer.dart';
import 'package:domain/src/redux/reducers/saved_news_reducer.dart';
import 'package:domain/src/redux/reducers/settings_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
      everyThingNewsState: everythingNewsReducer(state.everyThingNewsState, action),
      topNewsState: topNewsReducer(state.topNewsState, action),
      settingsState: settingsReducer(state.settingsState, action),
      articleUpdateState: articleUpdateReducer(state.articleUpdateState, action),
      savedNewsState: getSavedNewsReducers(state.savedNewsState, action),
      sharedNewsState: getSavedNewsReducers(state.savedNewsState, action, shared: true));
}
