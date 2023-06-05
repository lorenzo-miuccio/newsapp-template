import 'package:domain/src/blocs/news_fetch/news_fetch_state.dart';
import 'package:domain/src/redux/actions/news_actions.dart';
import 'package:redux/redux.dart';

final topNewsReducer = combineReducers<NewsFetchState>([
  TypedReducer<NewsFetchState, LoadedNewsAction>(_onLoadTop),
  TypedReducer<NewsFetchState, LoadingNewsAction>(_onLoadingTop),
]);

NewsFetchState _onLoadTop(NewsFetchState fetchState, LoadedNewsAction action) {
  if (action.top) {
    return NewsFetchState.hasData(articles: action.articles, validity: action.validity, freshness: action.freshness);
  }
  return fetchState;
}

NewsFetchState _onLoadingTop(NewsFetchState fetchState, LoadingNewsAction action) {
  if (action.top) {
    return NewsFetchState.loading();
  }
  return fetchState;
}





final everythingNewsReducer = combineReducers<NewsFetchState>([
  TypedReducer<NewsFetchState, LoadedNewsAction>(_onLoadEverything),
  TypedReducer<NewsFetchState, LoadingNewsAction>(_onLoadingEverything),
]);

NewsFetchState _onLoadEverything(NewsFetchState fetchState, LoadedNewsAction action) {
  if (!action.top) {
    return NewsFetchState.hasData(articles: action.articles, validity: action.validity, freshness: action.freshness);
  }

  return fetchState;
}

NewsFetchState _onLoadingEverything(NewsFetchState fetchState, LoadingNewsAction action) {
  if (!action.top) {
    return NewsFetchState.loading();
  }
  return fetchState;
}