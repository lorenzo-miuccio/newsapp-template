import 'package:domain/src/blocs/news_fetch/everything_news_bloc.dart';
import 'package:domain/src/blocs/news_fetch/top_news_bloc.dart';

class RefreshNewsUS {

  final TopNewsCubit _topNewsCubit;
  final EveryThingNewsCubit _everyThingNewsCubit;

  RefreshNewsUS(this._topNewsCubit, this._everyThingNewsCubit);

  void call(String country, {bool forceRemoteFetch = false}) {
    _topNewsCubit.getTopNews(country, forceRemoteFetch: forceRemoteFetch);
    _everyThingNewsCubit.getEverythingNews();
  }
}