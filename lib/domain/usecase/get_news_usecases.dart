import 'package:news_app/data/model/data_error.dart';
import 'package:news_app/domain/entity/article.dart';
import 'package:news_app/domain/entity/either.dart';
import 'package:news_app/domain/repository/news_repository.dart';
import 'package:news_app/domain/usecase/check_data_validity.dart';

class GetTopNewsUsecase {
  final NewsRepository _newsRepository;

  GetTopNewsUsecase(this._newsRepository);

  Future<Either<DataError, List<Article>>> call(String country, bool forceRemoteFetch) async {
    final DateTime? lastFetch = await _newsRepository.getLastRemoteFetch();
    bool remoteFetchError = false;

    if (!checkValidity(lastFetch) || forceRemoteFetch) {
      await _newsRepository.getRemoteTopNews(country: country).then((value) => value.fold(((err) {
            remoteFetchError = true;
          }), (articles) async {
            await _newsRepository.saveRecentNews(articles, isTop: true);
          }));
    }

    return _newsRepository.getLocalNews(isTop: true).mapLocalNews(remoteFetchError);
  }
}

class GetEverythingNewsUsecase {
  final NewsRepository _newsRepository;

  GetEverythingNewsUsecase(this._newsRepository);

  Future<Either<DataError, List<Article>>> call() async {
    final DateTime? lastFetch = await _newsRepository.getLastRemoteFetch();
    bool remoteFetchError = false;

    if (!checkValidity(lastFetch)) {
      await _newsRepository
          .getRemoteEverythingNews()
          .then((value) => value.fold(((err) => remoteFetchError = true), (articles) async {
                await _newsRepository.saveRecentNews(articles, isTop: false);
              }));
    }
    return _newsRepository.getLocalNews(isTop: false).mapLocalNews(remoteFetchError);
  }
}

extension _MappingLocalNewsEither on Future<Either<DataError, List<Article>>> {
  Future<Either<DataError, List<Article>>> mapLocalNews(bool remoteErr) => then((value) => value.mapBoth(
      (err) => Left(err),
      (articlesList) => remoteErr ? Left(DataError.expiredArticles(articles: articlesList)) : Right(articlesList)));
}
