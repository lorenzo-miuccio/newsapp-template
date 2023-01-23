import 'dart:async';

import 'package:news_app/domain/usecase/get_news_usecases.dart';
import 'package:news_app/presentation/blocs/news_fetch/data_error_mapping.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/blocs/news_fetch/news_fetch_state.dart';

class TopNewsCubit extends Cubit<NewsFetchState> {
  final GetTopNewsUsecase _getTopNewsUsecase;

  Timer? _timer;

  TopNewsCubit(this._getTopNewsUsecase) : super(const NewsFetchState.idle());

  void getTopNews(String country, {bool forceRemoteFetch = false}) {
    emit(const NewsFetchState.loading());
    NewsFetchState fetchState;
    _getTopNewsUsecase(country, forceRemoteFetch).then((value) {
      fetchState = getNewsFetchState(value);
      emit(fetchState);
      fetchState.maybeWhen(hasData: (_, validity, __) => validity ? _suggestRefresh() : null, orElse: () {});
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
