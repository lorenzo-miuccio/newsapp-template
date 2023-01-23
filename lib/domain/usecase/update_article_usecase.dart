import 'package:news_app/domain/entity/article.dart';
import 'package:news_app/domain/repository/news_repository.dart';

class UpdateArticleUsecase {
  final NewsRepository _newsRepository;

  UpdateArticleUsecase(this._newsRepository);

  Future<void> call(Article article) => _newsRepository.updateLocalArticle(article);
}
