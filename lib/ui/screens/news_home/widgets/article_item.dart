import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/ui/screens/article/article_screen.dart';
import 'package:newsapp/ui/screens/common_widgets/article_image_widget.dart';


class ArticleItem extends StatelessWidget {
  final Article article;
  final void Function()? refresh;

  const ArticleItem(this.article, this.refresh, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed(ArticleScreen.routeName, arguments: article)
          .then((value) => refresh?.call()),
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
