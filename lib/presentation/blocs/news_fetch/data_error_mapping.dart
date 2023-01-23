import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/data/model/data_error.dart';
import 'package:news_app/domain/entity/article.dart';
import 'package:news_app/domain/entity/either.dart';
import 'package:news_app/presentation/blocs/news_fetch/news_fetch_state.dart';

extension _DataErrorToNewsFetchStateExtension on DataError {
  NewsFetchState toNewsFetchState() => maybeWhen(
        noConnection: () => const NewsFetchState.noConnectionError(),
        expiredArticles: (expiredArticles) =>
            NewsFetchState.hasData(articles: expiredArticles, validity: false, freshness: false),
        orElse: () => const NewsFetchState.error(),
      );
}

extension EmitNewsFetchStateExtension on Cubit<NewsFetchState> {
  NewsFetchState getNewsFetchState(Either<DataError, List<Article>> either) {
    NewsFetchState? stateToEmit;
    either.fold((dataErr) => stateToEmit = dataErr.toNewsFetchState(), (news) {
      stateToEmit = NewsFetchState.hasData(articles: news, validity: true, freshness: true);
    });

    return stateToEmit!;
  }
}
