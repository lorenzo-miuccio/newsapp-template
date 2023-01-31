import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/ui/screens/article/article_screen.dart';
import 'package:newsapp/ui/screens/common_widgets/publish_date_readtime_widget.dart';
import 'package:newsapp/ui/screens/common_widgets/thumbnail.dart';


class HeadlineItem extends StatelessWidget {
  final Article article;
  final void Function() refreshNews;

  const HeadlineItem({required this.article, Key? key, required this.refreshNews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.of(context).pushNamed(ArticleScreen.routeName, arguments: article).then((value) => refreshNews()),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Thumbnail(
                imageUrl: article.urlToImage,
                imageTag: article.url,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: Text(
                  article.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                article.author,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(height: 7),
              PublishDateReadtimeWidget(publishDate: article.publishDate, readTime: article.readTime)
            ],
          ),
        ),
      ),
    );
  }
}
