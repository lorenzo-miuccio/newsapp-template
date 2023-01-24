import 'package:bloc/bloc.dart';
import 'package:domain/src/blocs/news_fetch/news_cubit_extension.dart';
import 'package:domain/src/blocs/news_fetch/news_fetch_state.dart';
import 'package:domain/src/repository/news_repository.dart';

class EveryThingNewsCubit extends Cubit<NewsFetchState> {

  final NewsRepository _newsRepository;

  EveryThingNewsCubit(this._newsRepository) : super(const NewsFetchState.idle());

  void searchNews({required String characters, required String lan}) {
    emit(const NewsFetchState.loading());
    _newsRepository.searchNewsByCharacters(characters, lan: lan).then((value) => emit(getNewsFetchState(value)));
  }

  Future<void> getEverythingNews() async {
    emit(const NewsFetchState.loading());

    fetchNews(_newsRepository, isTop: false).then((value) => emit(value));
  }
}
