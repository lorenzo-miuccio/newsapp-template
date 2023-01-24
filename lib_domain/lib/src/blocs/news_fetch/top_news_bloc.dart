import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:domain/src/blocs/news_fetch/news_cubit_extension.dart';
import 'package:domain/src/blocs/news_fetch/news_fetch_state.dart';
import 'package:domain/src/repository/news_repository.dart';

class TopNewsCubit extends Cubit<NewsFetchState> {
  final NewsRepository _newsRepository;

  Timer? _timer;

  TopNewsCubit(this._newsRepository) : super(const NewsFetchState.idle());

  Future<void> getTopNews(String country, {bool forceRemoteFetch = false}) async {
    emit(const NewsFetchState.loading());

    fetchNews(_newsRepository,
            isTop: true, forceRemoteFetch: forceRemoteFetch, suggestRefresh: _suggestRefresh, country: country)
        .then((value) => emit(value));
  }

  void _suggestRefresh() {
    _timer?.cancel();
    _timer = Timer.periodic(
        const Duration(seconds: 30),
        (timer) => emit(state.maybeMap(
            hasData: (dataState) => dataState.copyWith(freshness: false), orElse: () => const NewsFetchState.error())));
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
