import 'package:domain/domain.dart';
import 'package:redux/redux.dart';

class RefreshNewsUS {
  final Store<AppState> _store;

  RefreshNewsUS(this._store);

  void call(String country, {bool forceRemoteFetch = false}) {
    _store.dispatch(NewsActions.loadNewsAction(top: true, country: country, forceRemoteFetch: forceRemoteFetch));
    _store.dispatch(NewsActions.loadNewsAction(top: false));
    // _topNewsCubit.getTopNews(country, forceRemoteFetch: forceRemoteFetch);
    // _everyThingNewsCubit.getEverythingNews();
  }
}