import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'package:newsapp/config/theme.dart';
import 'package:newsapp/ui/screens/article/widgets/article_appbar.dart';
import 'package:newsapp/ui/screens/article/widgets/article_bottom_bar.dart';
import 'package:newsapp/ui/screens/common_widgets/publish_date_readtime_widget.dart';
import 'package:newsapp/ui/screens/common_widgets/thumbnail.dart';
import 'package:newsapp/ui/screens/saved_shared/saved_shared_screen.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  static const String routeName = '/article';

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  // late Article _article = ModalRoute.of(context)!.settings.arguments as Article;
  Article? _article;
  bool _visibilityFeature = false;

  @override
  void didChangeDependencies() {
    _article ??= ModalRoute.of(context)!.settings.arguments as Article;
    super.didChangeDependencies();
  }

  void _changeVisibility() => setState(() => _visibilityFeature = !_visibilityFeature);

  void _updateArticle(Article updatedArticle) => _article = updatedArticle;

  @override
  Widget build(BuildContext context) {
    final article = _article!;
    print(article.isSaved);
    return Theme(
      data: _visibilityFeature
          ? (MediaQuery.of(context).platformBrightness == Brightness.light
              ? getThemeDataByMode(darkMode: true)
              : getThemeDataByMode(darkMode: false))
          : Theme.of(context),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: ArticleAppBar(
            source: article.source,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Thumbnail(
                imageUrl: article.urlToImage,
                imageTag: article.url,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: ListView(
                    children: [
                      Text(
                        article.title,
                        style: const TextStyle(fontSize: 30),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        article.description,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      ListTile(
                        tileColor: Colors.transparent,
                        leading: const SizedBox(
                          height: double.infinity,
                          child: Icon(Icons.account_circle),
                        ),
                        title: Text(article.author, style: const TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: PublishDateReadtimeWidget(
                          publishDate: article.publishDate,
                          readTime: article.readTime,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        article.text,
                        style: TextStyle(fontFamily: _visibilityFeature ? 'Noto Serif' : 'Roboto'),
                      ),
                      TextButton(
                          onPressed: () => Navigator.of(context).pushNamed(SavedSharedScreen.savedRouteName),
                          child: const Text('push'))
                    ],
                  ),
                ),
              ),
              ArticleBottomBar(
                article,
                visibilityFeature: _visibilityFeature,
                changeVisibility: _changeVisibility,
                updateArticle: _updateArticle,
              ),
            ],
          ),
        );
      }),
    );
  }
}
