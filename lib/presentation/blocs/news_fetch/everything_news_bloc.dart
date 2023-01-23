import 'package:news_app/domain/usecase/get_news_usecases.dart';
import 'package:news_app/domain/usecase/search_news_usecase.dart';
import 'package:news_app/presentation/blocs/news_fetch/data_error_mapping.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/blocs/news_fetch/news_fetch_state.dart';

class EveryThingNewsCubit extends Cubit<NewsFetchState> {
  final GetEverythingNewsUsecase _getEverythingNewsUsecase;
  final SearchNewsUsecase _searchNewsUsecase;

  EveryThingNewsCubit(this._getEverythingNewsUsecase, this._searchNewsUsecase) : super(const NewsFetchState.idle());

  void searchNews({required String characters, required String lan}) {
    emit(const NewsFetchState.loading());
    _searchNewsUsecase(characters, lan: lan).then((value) => emit(getNewsFetchState(value)));
  }

  void getEverythingNews() {
    emit(const NewsFetchState.loading());
    _getEverythingNewsUsecase().then((value) => emit(getNewsFetchState(value)));
  }
}
