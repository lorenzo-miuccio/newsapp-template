import 'package:domain/src/check_data_validity.dart';
import 'package:domain/src/entity/article.dart';
import 'package:domain/src/entity/either.dart';
import 'package:domain/src/error/data_error.dart';
import 'package:domain/src/redux/actions/news_actions.dart';
import 'package:domain/src/repository/news_repository.dart';


extension _DataErrorNewsActionExtension on DataError {
  NewsActions toNewsAction({required bool top}) => maybeWhen(
    orElse: () => NewsActions.error(top: top),
  );
}

mixin NewsMiddlewareMixin {
  NewsActions getNewsAction(Either<DataError, List<Article>> either, {required bool top, bool remoteErr = false}) {
    late NewsActions action;
    either.fold((dataErr) => action = dataErr.toNewsAction(top: top), (news) =>
    action = NewsActions.loadedNewsAction(articles: news, validity: !remoteErr, freshness: true, top: top));

    return action;
  }

  Future<NewsActions> fetchNews(NewsRepository newsRepo,
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
        .then((value) => getNewsAction(value, remoteErr: remoteFetchError, top: isTop));
  }
}

