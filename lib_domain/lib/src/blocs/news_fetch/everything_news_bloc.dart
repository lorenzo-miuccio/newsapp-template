import 'package:bloc/bloc.dart';
import 'package:domain/src/blocs/news_fetch/util/news_cubit_extension.dart';
import 'package:domain/src/blocs/news_fetch/news_fetch_state.dart';
import 'package:domain/src/repository/news_repository.dart';

class EveryThingNewsCubit extends Cubit<NewsFetchState> with NewsMiddlewareMixin {

  final NewsRepository _newsRepository;

  EveryThingNewsCubit(this._newsRepository) : super(const NewsFetchState.idle());

  Future<void> searchNews({required String characters, required String lan}) {
    emit(const NewsFetchState.loading());
    return _newsRepository.searchNewsByCharacters(characters, lan: lan).then((value) => emit(getNewsFetchState(value)));
  }

  Future<void> getEverythingNews() {
    emit(const NewsFetchState.loading());

    return fetchNews(_newsRepository, isTop: false).then((value) => emit(value));
  }
}