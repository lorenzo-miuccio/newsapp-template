import 'package:domain/domain.dart';
import 'package:domain/src/redux/actions/article_update_actions.dart';
import 'package:redux/redux.dart';

class UpdateArticleMIddleWare implements MiddlewareClass<AppState> {
  final NewsRepository _newsRepo;

  UpdateArticleMIddleWare(this._newsRepo);

  @override
  call(Store<AppState> store, action, NextDispatcher next) {
    if (action is UpdateArticleActions) {
      action.whenOrNull(
        saveOrUnSave: (article) {
          _newsRepo
              .updateLocalArticle(article.copyWith(isSaved: !article.isSaved))
              .then((value) => store.dispatch(UpdateArticleActions.saveStatusChanged(status: !article.isSaved)))
              .catchError((_) => UpdateArticleActions.error());
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
