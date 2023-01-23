import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/domain/entity/article.dart';
import 'package:news_app/presentation/blocs/update_article/article_update_state.dart';
import 'package:news_app/presentation/blocs/update_article/update_article_bloc.dart';
import 'package:news_app/presentation/screens/article/widgets/article_appbar.dart';
import 'package:news_app/presentation/screens/article/widgets/article_bottom_bar.dart';
import 'package:news_app/presentation/screens/common_widgets/publish_date_readtime_widget.dart';
import 'package:news_app/presentation/screens/common_widgets/thumbnail.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app/presentation/theme.dart';
import 'package:news_app/presentation/utils/update_snackbar.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  static const String routeName = '/article';

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  late Article _article;
  bool _visibilityFeature = false;

  @override
  void didChangeDependencies() {
    _article = ModalRoute.of(context)!.settings.arguments as Article;
    super.didChangeDependencies();
  }

  void _changeVisibility() => setState(() => _visibilityFeature = !_visibilityFeature);

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;

    return Theme(
      data: _visibilityFeature
          ? (MediaQuery.of(context).platformBrightness == Brightness.light
          ? getThemeDataByMode(darkMode: true)
          : getThemeDataByMode(darkMode: false))
          : Theme.of(context),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: ArticleAppBar(
              source: _article.source,
            ),
            body: BlocListener<UpdateArticleCubit, ArticleUpdateState>(
              listener: (_, state) => state.maybeWhen(
                  savedStatus: (status) {
                    status
                        ? showUpdateSnackBar(context, appLocalizations.added(appLocalizations.saved))
                        : showUpdateSnackBar(context, appLocalizations.removed(appLocalizations.saved));
                    setState(() {
                      _article = _article.copyWith(isSaved: status);
                    });
                    return;
                  },
                  sharedStatus: (status) {
                    status
                        ? showUpdateSnackBar(context, appLocalizations.added(appLocalizations.shared))
                        : showUpdateSnackBar(context, appLocalizations.removed(appLocalizations.shared));
                    setState(() {
                      _article = _article.copyWith(isShared: status);
                    });
                    return;
                  },
                  error: (_) => showUpdateSnackBar(context, 'An error occured'),
                  orElse: () {}),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Thumbnail(
                    imageUrl: _article.urlToImage,
                    imageTag: _article.url,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                      child: ListView(
                        children: [
                          Text(
                            _article.title,
                            style: const TextStyle(fontSize: 30),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            _article.description,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          ListTile(
                            tileColor: Colors.transparent,
                            leading: const SizedBox(
                              height: double.infinity,
                              child: Icon(Icons.account_circle),
                            ),
                            title: Text(_article.author, style: const TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: PublishDateReadtimeWidget(
                              publishDate: _article.publishDate,
                              readTime: _article.readTime,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            _article.text,
                            style: TextStyle(fontFamily: _visibilityFeature ? 'Noto Serif' : 'Roboto'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ArticleBottomBar(
                    _article,
                    visibilityFeature: _visibilityFeature,
                    changeVisibility: _changeVisibility,
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
