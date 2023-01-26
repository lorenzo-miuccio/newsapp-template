import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsapp_template/ui/screens/common_widgets/publish_date_readtime_widget.dart';
import 'package:newsapp_template/ui/screens/common_widgets/thumbnail.dart';
import 'package:newsapp_template/utils/routing.dart';


class HeadlineItem extends StatelessWidget {
  final Article article;
  final void Function() refreshNews;

  const HeadlineItem({required this.article, Key? key, required this.refreshNews}) : super(key: key);

  void _watchRouteChange(BuildContext context) {
    if (!GoRouter.of(context).location.contains(article.title)) {  // Here you check for some changes in your route that indicate you are no longer on the page you have pushed before
      refreshNews();
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
