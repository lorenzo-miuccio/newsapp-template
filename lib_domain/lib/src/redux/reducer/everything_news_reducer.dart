import 'package:domain/domain.dart';
import 'package:redux/redux.dart';


final tabsReducer = combineReducers<NewsFetchState>([
  TypedReducer<NewsFetchState, UpdateTabAction>(_fetchTopNews),
]);

NewsFetchState _fetchTopNews(AppTab activeTab, UpdateTabAction action) {
  return action.newTab;
}