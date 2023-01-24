import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:domain/src/blocs/news_fetch/data_error_mapping.dart';
import 'package:domain/src/blocs/news_fetch/news_fetch_state.dart';
import 'package:domain/src/check_data_validity.dart';
import 'package:domain/src/repository/news_repository.dart';



class TopNewsCubit extends Cubit<NewsFetchState> {
  //final GetTopNewsUsecase _getTopNewsUsecase;
  final NewsRepository _newsRepository;

  Timer? _timer;

  TopNewsCubit(this._newsRepository) : super(const NewsFetchState.idle());

  Future<void> getTopNews(String country, {bool forceRemoteFetch = false}) async {

    emit(const NewsFetchState.loading());

    final DateTime? lastFetch = await _newsRepository.getLastRemoteFetch();
    bool remoteFetchError = false;

    if (!checkValidity(lastFetch) || forceRemoteFetch) {
      await _newsRepository.getRemoteTopNews(country: country).then((value) => value.fold(((err) {
        remoteFetchError = true;
      }), (articles) async {
        await _newsRepository.saveRecentNews(articles, isTop: true);
      }));
    }

    _newsRepository.getLocalNews(isTop: true).then((value) {
      NewsFetchState fetchState = getNewsFetchState(value, remoteErr: remoteFetchError);
      emit(fetchState);
      fetchState.whenOrNull(hasData: (_, validity, __) => validity ? _suggestRefresh() : null);
    });
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
