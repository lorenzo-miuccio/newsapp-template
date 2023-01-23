import 'package:news_app/data/model/data_error.dart';
import 'package:news_app/domain/entity/article.dart';
import 'package:news_app/domain/entity/either.dart';
import 'package:news_app/domain/repository/news_repository.dart';

class GetSavedOrSharedNewsUsecase {
  final NewsRepository _newsRepository;

  GetSavedOrSharedNewsUsecase(this._newsRepository);

  Future<Either<DataError, List<Article>>> call({required bool saved}) => _newsRepository.getSavedOrSharedArticles(isSaved: saved);
}