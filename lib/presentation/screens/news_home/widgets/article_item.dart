import 'package:flutter/material.dart';
import 'package:news_app/domain/entity/article.dart';
import 'package:news_app/presentation/screens/article/article_screen.dart';
import 'package:news_app/presentation/screens/common_widgets/article_image_widget.dart';

class ArticleItem extends StatelessWidget {
  final Article article;
  final void Function() refresh;

  const ArticleItem(this.article, this.refresh, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed(ArticleScreen.routeName, arguments: article)
          .then((value) => refresh()),
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
