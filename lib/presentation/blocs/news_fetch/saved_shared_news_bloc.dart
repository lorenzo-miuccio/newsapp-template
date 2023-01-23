import 'package:news_app/domain/usecase/get_saved_news_usecase.dart';
import 'package:news_app/presentation/blocs/news_fetch/data_error_mapping.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/blocs/news_fetch/news_fetch_state.dart';

class SavedSharedNewsCubit extends Cubit<NewsFetchState> {
  final GetSavedOrSharedNewsUsecase _getSavedOrSharedNews;

  SavedSharedNewsCubit(this._getSavedOrSharedNews) : super(const NewsFetchState.idle());

  void getSavedOrSharedNews({required bool saved}) {
    emit(const NewsFetchState.loading());
    _getSavedOrSharedNews(saved: saved).then((value) => emit(getNewsFetchState(value)));
  }
}
