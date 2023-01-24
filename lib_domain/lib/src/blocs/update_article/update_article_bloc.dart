
import 'package:bloc/bloc.dart';
import 'package:domain/src/blocs/update_article/article_update_state.dart';
import 'package:domain/src/entity/article.dart';
import 'package:domain/src/repository/news_repository.dart';

class UpdateArticleCubit extends Cubit<ArticleUpdateState> {

  final NewsRepository _newsRepository;
  UpdateArticleCubit(this._newsRepository) : super(const ArticleUpdateState.idle());

  void shareOrRemoveArticle(Article article) => _newsRepository.updateLocalArticle(article.copyWith(isShared: !article.isShared))
      .then((_) => emit(ArticleUpdateState.sharedStatus(!article.isShared)))
      .catchError((e) => emit(const ArticleUpdateState.error()));

  void saveOrRemoveArticle(Article article) => _newsRepository.updateLocalArticle(article.copyWith(isSaved: !article.isSaved))
      .then((_) => emit(ArticleUpdateState.savedStatus(!article.isSaved)))
      .catchError((e) => emit(const ArticleUpdateState.error()));
}
