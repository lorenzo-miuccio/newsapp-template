import 'package:news_app/data/model/data_error.dart';
import 'package:news_app/domain/entity/article.dart';
import 'package:news_app/domain/entity/either.dart';
import 'package:news_app/domain/repository/news_repository.dart';

class SearchNewsUsecase {
  final NewsRepository _newsRepository;

  SearchNewsUsecase(this._newsRepository);

  Future<Either<DataError, List<Article>>> call(String characters, {required String lan}) =>
      _newsRepository.searchNewsByCharacters(characters, lan: lan);
}
