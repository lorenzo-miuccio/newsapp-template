import 'package:domain/src/blocs/news_fetch/news_fetch_state.dart';
import 'package:domain/src/check_data_validity.dart';
import 'package:domain/src/entity/article.dart';
import 'package:domain/src/entity/either.dart';
import 'package:domain/src/error/data_error.dart';
import 'package:domain/src/redux/actions/topnews_actions.dart';
import 'package:domain/src/repository/news_repository.dart';

extension _DataErrorToAction on DataError {
  NewsFetchState toNewsAction() => maybeWhen(
    noConnection: () => const TopNewsActions.,
    orElse: () => const NewsFetchState.error(),
  );
}


TopNewsActions getAction(Either<DataError, List<Article>> either, {bool remoteErr = false}) {
  late TopNewsActions action;
  either.fold((dataErr) => action = dataErr.toNewsAction(), (news) =>
  stateToEmit = NewsFetchState.hasData(articles: news, validity: !remoteErr, freshness: true));

  return stateToEmit!;
}

Future<NewsFetchState> fetchNews(NewsRepository newsRepo,
    {required bool isTop, bool forceRemoteFetch = false, void Function()? suggestRefresh, String? country}) async {

  final DateTime? lastFetch = await newsRepo.getLastRemoteFetch();
  bool remoteFetchError = false;

  if (!checkValidity(lastFetch) || forceRemoteFetch) {

    final remoteResult = isTop ? newsRepo.getRemoteTopNews(country: country!) : newsRepo.getRemoteEverythingNews();
    await remoteResult.then((value) =>
        value.fold(((err) {
          remoteFetchError = true;
        }), (articles) async {
          suggestRefresh != null ? suggestRefresh() : null;
          await newsRepo.saveRecentNews(articles, isTop: isTop);
        }));
  }

  return newsRepo
      .getLocalNews(isTop: isTop)
      .then((value) => getAction(value, remoteErr: remoteFetchError));
}