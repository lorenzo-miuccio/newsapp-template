// import 'package:domain/domain.dart';
// import 'package:domain/src/redux/actions/news_actions.dart';
// import 'package:domain/src/redux/reducer/util/fetch_news_util.dart';
// import 'package:redux/redux.dart';
//
// import 'app_state.dart';
//
// List<Middleware<AppState>> createStoreMiddleware(
//     NewsRepository newsRepository,
//     LanguageRepository languageRepository
//     ) {
//   final fetchNews = _fetchTopNews(newsRepository);
//   final loadTodos = _createLoadTodos(repository);
//
//   return [
//     TypedMiddleware<AppState, LoadTopNewsAction>(fetchNews),
//   ];
// }
//
// Middleware<AppState> _fetchNews(NewsRepository repository) {
//   return (Store<AppState> store, action, NextDispatcher next) {
//     // next(action);
//     final loadAction = action as LoadTopNewsAction;
//
//     fetchNews(repository,
//         isTop: true, forceRemoteFetch: loadAction.forceRemoteFetch, country: loadAction.country)
//         .then((value) => store.dispatch(LoadedTopNewsAction(value)));
//   };
// }
//
// Middleware<AppState> _createSaveTodos(TodosRepository repository) {
//   return (Store<AppState> store, action, NextDispatcher next) {
//     next(action);
// }