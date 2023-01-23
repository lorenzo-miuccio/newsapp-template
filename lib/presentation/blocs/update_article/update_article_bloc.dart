import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/domain/entity/article.dart';
import 'package:news_app/domain/repository/news_repository.dart';
import 'package:news_app/domain/usecase/update_article_usecase.dart';
import 'package:news_app/presentation/blocs/update_article/article_update_state.dart';

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
