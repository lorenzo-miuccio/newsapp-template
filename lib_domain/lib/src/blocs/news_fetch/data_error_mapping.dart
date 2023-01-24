import 'package:bloc/bloc.dart';
import 'package:domain/src/blocs/news_fetch/news_fetch_state.dart';
import 'package:domain/src/entity/article.dart';
import 'package:domain/src/entity/either.dart';
import 'package:domain/src/error/data_error.dart';


extension _DataErrorToNewsFetchStateExtension on DataError {
  NewsFetchState toNewsFetchState() => maybeWhen(
        noConnection: () => const NewsFetchState.noConnectionError(),
        expiredArticles: (expiredArticles) =>
            NewsFetchState.hasData(articles: expiredArticles, validity: false, freshness: false),
        orElse: () => const NewsFetchState.error(),
      );
}

extension EmitNewsFetchStateExtension on Cubit<NewsFetchState> {
  NewsFetchState getNewsFetchState(Either<DataError, List<Article>> either, {bool remoteErr = false}) {
    NewsFetchState? stateToEmit;
    either.fold((dataErr) => stateToEmit = dataErr.toNewsFetchState(), (news) =>
      stateToEmit = NewsFetchState.hasData(articles: news, validity: !remoteErr, freshness: true));

    return stateToEmit!;
  }
}
