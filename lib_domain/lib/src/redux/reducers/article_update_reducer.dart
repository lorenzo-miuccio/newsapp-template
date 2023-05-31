import 'package:domain/domain.dart';
import 'package:domain/src/redux/actions/article_update_actions.dart';
import 'package:redux/redux.dart';

final articleUpdateReducer =
    combineReducers<ArticleUpdateState>([
      TypedReducer<ArticleUpdateState, SaveStatusAction>(_onSave),
      TypedReducer<ArticleUpdateState, ShareStatusAction>(_onShare),
    ]);

ArticleUpdateState _onSave(ArticleUpdateState state, SaveStatusAction action) {
  return ArticleUpdateState.savedStatus(action.status);
}

ArticleUpdateState _onShare(ArticleUpdateState state, ShareStatusAction action) {
  return ArticleUpdateState.sharedStatus(action.status);
}
