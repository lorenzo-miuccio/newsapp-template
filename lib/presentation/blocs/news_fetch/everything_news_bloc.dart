import 'package:news_app/domain/repository/news_repository.dart';
import 'package:news_app/domain/usecase/check_data_validity.dart';
import 'package:news_app/domain/usecase/get_news_usecases.dart';
import 'package:news_app/domain/usecase/search_news_usecase.dart';
import 'package:news_app/presentation/blocs/news_fetch/data_error_mapping.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/blocs/news_fetch/news_fetch_state.dart';

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
