import 'package:domain/src/blocs/news_fetch/news_fetch_state.dart';
import 'package:domain/src/redux/actions/news_actions.dart';
import 'package:redux/redux.dart';

final topNewsReducer = combineReducers<NewsFetchState>([
  TypedReducer<NewsFetchState, LoadedNewsAction>(_onLoadTop),
]);

NewsFetchState _onLoadTop(NewsFetchState fetchState, LoadedNewsAction action) {
  if (action.top) {
    return NewsFetchState.hasData(articles: action.articles, validity: action.validity, freshness: action.freshness);
  }

  return fetchState;
}



final everythingNewsReducer = combineReducers<NewsFetchState>([
  TypedReducer<NewsFetchState, LoadedNewsAction>(_onLoadEverything),
]);

NewsFetchState _onLoadEverything(NewsFetchState fetchState, LoadedNewsAction action) {
  if (!action.top) {
    return NewsFetchState.hasData(articles: action.articles, validity: action.validity, freshness: action.freshness);
  }

  return fetchState;
}