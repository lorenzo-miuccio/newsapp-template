import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsapp_template/ui/screens/common_widgets/article_image_widget.dart';
import 'package:newsapp_template/utils/routing.dart';

class ArticleItem extends StatelessWidget {
  final Article article;
  final void Function() refresh;

  const ArticleItem(this.article, this.refresh, {Key? key}) : super(key: key);

  void _watchRouteChange(BuildContext context) {
    if (!GoRouter.of(context).location.contains(article.title)) {
      // Here you check for some changes in your route that indicate you are no longer on the page you have pushed before
      refresh();
      GoRouter.of(context).removeListener(() => _watchRouteChange(context)); // remove listener
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRoutes.articleDetail(article.title), extra: article);
        GoRouter.of(context).addListener(() => _watchRouteChange(context));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 7),
        child: ListTile(
          leading: SizedBox(
            width: 80,
            child: Hero(
              tag: article.url,
              child: ArticleImage(imageUrl: article.urlToImage),
            ),
          ),
          title: Text(
            article.title,
            style: const TextStyle(fontSize: 14),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            '${article.author} - ${article.readTime} min read',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.blueGrey),
          ),
        ),
      ),
    );
  }
}
