import 'package:domain/domain.dart';
import 'package:domain/src/redux/actions/article_update_actions.dart';
import 'package:redux/redux.dart';

final articleUpdateReducer =
    combineReducers<ArticleUpdateState>([TypedReducer<ArticleUpdateState, SaveStatusAction>(_onSave)]);

ArticleUpdateState _onSave(ArticleUpdateState state, SaveStatusAction action) {
  return ArticleUpdateState.savedStatus(action.status);
}
