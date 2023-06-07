import 'package:domain/src/entity/article.dart';
import 'package:domain/src/entity/either.dart';
import 'package:domain/src/error/data_error.dart';
import 'package:domain/src/redux/actions/saved_news_actions.dart';
import 'package:domain/src/redux/app_state.dart';
import 'package:domain/src/repository/news_repository.dart';
import 'package:redux/redux.dart';

class NewsMiddleware implements MiddlewareClass<AppState> {
  final NewsRepository _newsRepository;

  NewsMiddleware(this._newsRepository);

  @override
  call(Store<AppState> store, action, NextDispatcher next) {
    if (action is SavedNewsActions) {
      action.whenOrNull(loadNewsAction: (bool shared) {
        //TODO: delete shared in loading
        store.dispatch(SavedNewsActions.loadingNewsAction(shared: shared));
        _newsRepository.getSavedOrSharedArticles(isSaved: !shared)
            .then((value) => store.dispatch(getSavedNewsAction(value, shared: shared)));
      });
    }
    next(action);
  }

  SavedNewsActions getSavedNewsAction(Either<DataError, List<Article>> result, {required bool shared}) =>
      result.map<SavedNewsActions>((dataErr) => SavedNewsActions.error(shared: shared), (articles) =>
          SavedNewsActions.loadedNewsAction(articles: articles, shared: shared));
}