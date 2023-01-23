import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/domain/entity/article.dart';
import 'package:news_app/presentation/blocs/update_article/update_article_bloc.dart';
import 'package:share_plus/share_plus.dart';

class ArticleBottomBar extends StatelessWidget {
  const ArticleBottomBar(this.article, {Key? key, required this.changeVisibility, required this.visibilityFeature}) : super(key: key);

  final void Function() changeVisibility;
  final bool visibilityFeature;
  final Article article;

  void _shareArticle(BuildContext context) {
    Share.shareWithResult('Check this article! ${article.url}').then((value) {
      value.status == ShareResultStatus.success && !article.isShared ? _addToShared(context) : null;
    });
  }

  void _addToShared(BuildContext context) => context.read<UpdateArticleCubit>().shareOrRemoveArticle(article);

  void _addOrRemoveSave(BuildContext context) => context.read<UpdateArticleCubit>().saveOrRemoveArticle(article);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.grey.withOpacity(0.3),
      child: ButtonTheme(
        buttonColor: Theme.of(context).primaryColor,
        child: Row(
          children: [
            IconButton(
              onPressed: () => _addOrRemoveSave(context),
              icon: article.isSaved ? const Icon(Icons.bookmark_outlined) : const Icon(Icons.bookmark_border),
            ),
            IconButton(
              onPressed: () => _shareArticle(context),
              icon: article.isShared ? const Icon(Icons.share) : const Icon(Icons.share_outlined),
            ),
            IconButton(
                onPressed: changeVisibility,
                icon: visibilityFeature
                    ? const Icon(Icons.visibility_off_outlined)
                    : const Icon(Icons.visibility_outlined))
          ],
        ),
      ),
    );
  }
}
