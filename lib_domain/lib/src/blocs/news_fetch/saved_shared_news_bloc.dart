

import 'package:bloc/bloc.dart';
import 'package:domain/src/blocs/news_fetch/util/news_cubit_extension.dart';
import 'package:domain/src/blocs/news_fetch/news_fetch_state.dart';
import 'package:domain/src/repository/news_repository.dart';

class SavedSharedNewsCubit extends Cubit<NewsFetchState> with NewsCubitMixin {
  final NewsRepository _newsRepository;
  SavedSharedNewsCubit(this._newsRepository) : super(const NewsFetchState.idle());

  void getSavedOrSharedNews({required bool saved}) {
    emit(const NewsFetchState.loading());
    _newsRepository.getSavedOrSharedArticles(isSaved: saved).then((value) => emit(getNewsFetchState(value)));
  }
}
