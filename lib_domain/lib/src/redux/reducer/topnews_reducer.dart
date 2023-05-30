import 'package:domain/src/blocs/news_fetch/news_fetch_state.dart';
import 'package:domain/src/redux/actions/topnews_actions.dart';
import 'package:redux/redux.dart';

final tabsReducer = combineReducers<NewsFetchState>([
  TypedReducer<NewsFetchState, LoadTopNewsAction>(_fetchTopNews),
  TypedReducer<NewsFetchState, LoadTopNewsAction>(_loadedTopNews),
]);

NewsFetchState _fetchTopNews(NewsFetchState fetchState, LoadTopNewsAction action) {
  return NewsFetchState.loading();
}

NewsFetchState _loadedTopNews(NewsFetchState fetchState, LoadedTopNewsAction action) {

}