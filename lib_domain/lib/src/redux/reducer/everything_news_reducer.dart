import 'package:domain/domain.dart';
import 'package:domain/src/redux/actions/topnews_actions.dart';
import 'package:redux/redux.dart';


final tabsReducer = combineReducers<NewsFetchState>([
  TypedReducer<NewsFetchState, LoadTopNewsAction>(_fetchTopNews),
]);

NewsFetchState _fetchTopNews(NewsFetchState fetchState, LoadTopNewsAction action) {
  return action.newTab;
}