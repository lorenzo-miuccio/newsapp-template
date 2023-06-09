import 'package:domain/src/redux/actions/update_article_actions.dart';
import 'package:domain/src/redux/app_state.dart';
import 'package:domain/src/repository/news_repository.dart';
import 'package:redux/redux.dart';

class UpdateArticleMiddleWare implements MiddlewareClass<AppState> {
  final NewsRepository _newsRepo;

  UpdateArticleMiddleWare(this._newsRepo);

  @override
  call(Store<AppState> store, action, NextDispatcher next) {
    if (action is UpdateArticleActions) {
      action.whenOrNull(
        saveOrUnSave: (article) {
          _newsRepo
              .updateLocalArticle(article.copyWith(isSaved: !article.isSaved))
              .then((_) => store.dispatch(UpdateArticleActions.saveStatusChanged(status: !article.isSaved)))
              .catchError((error) {
            store.dispatch(UpdateArticleActions.error());
          });
        },
        shareOrUnShare: (article) {
          _newsRepo
              .updateLocalArticle(article.copyWith(isShared: !article.isShared))
              .then((value) => store.dispatch(UpdateArticleActions.shareStatusChanged(status: !article.isShared)))
              .catchError((_) => UpdateArticleActions.error());
        },
      );
    }
    next(action);
  }
}
