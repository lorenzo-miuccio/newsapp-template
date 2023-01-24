

import 'package:bloc/bloc.dart';
import 'package:domain/src/blocs/news_fetch/data_error_mapping.dart';
import 'package:domain/src/blocs/news_fetch/news_fetch_state.dart';
import 'package:domain/src/check_data_validity.dart';
import 'package:domain/src/repository/news_repository.dart';

class EveryThingNewsCubit extends Cubit<NewsFetchState> {
  //final GetEverythingNewsUsecase _getEverythingNewsUsecase;
  //final SearchNewsUsecase _searchNewsUsecase;

  final NewsRepository _newsRepository;

  EveryThingNewsCubit(this._newsRepository) : super(const NewsFetchState.idle());

  void searchNews({required String characters, required String lan}) {
    emit(const NewsFetchState.loading());
    _newsRepository.searchNewsByCharacters(characters, lan: lan).then((value) => emit(getNewsFetchState(value)));
  }

  Future<void> getEverythingNews() async {
    emit(const NewsFetchState.loading());
    final DateTime? lastFetch = await _newsRepository.getLastRemoteFetch();

    bool remoteErr = false;
    if (!checkValidity(lastFetch)) {
      await _newsRepository.getRemoteEverythingNews().then((value) => value.fold(((err) {
        remoteErr = true;
      }), (articles) async {
        await _newsRepository.saveRecentNews(articles, isTop: false);
      }));
    }
    _newsRepository.getLocalNews(isTop: false).then((value) => emit(getNewsFetchState(value, remoteErr: remoteErr)));
  }
}
