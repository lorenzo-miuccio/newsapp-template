import 'package:domain/src/blocs/news_fetch/news_fetch_state.dart';
import 'package:domain/src/redux/actions/saved_news_actions.dart';
import 'package:redux/redux.dart';

NewsFetchState getSavedNewsReducers(NewsFetchState state, dynamic action, {bool shared = false}) {

  final savedNewsReducer = combineReducers<NewsFetchState>([
    TypedReducer<NewsFetchState, LoadedSavedNewsAction>(
        (fetchState, action) => _onLoad(fetchState, action, shared: shared)),
    TypedReducer<NewsFetchState, LoadingSavedNewsAction>(
        (fetchState, action) => _onLoading(fetchState, action, shared: shared)),
  ]);

  return savedNewsReducer(state, action);
}

NewsFetchState _onLoad(NewsFetchState fetchState, LoadedSavedNewsAction action, {bool shared = false}) {
  if (action.shared == shared) {
    return NewsFetchState.hasData(articles: action.articles, validity: true, freshness: true);
  }
  return fetchState;
}

NewsFetchState _onLoading(NewsFetchState fetchState, LoadingSavedNewsAction action, {bool shared = false}) {
  if (action.shared == shared) {
    return NewsFetchState.loading();
  }
  return fetchState;
}
