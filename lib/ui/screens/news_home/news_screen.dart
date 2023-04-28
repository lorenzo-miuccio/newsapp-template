import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:newsapp/ui/screens/news_home/widgets/custom_appbar.dart';
import 'package:newsapp/ui/screens/common_widgets/drawer/app_drawer.dart';
import 'package:newsapp/ui/screens/news_home/widgets/everything_section.dart';
import 'package:newsapp/ui/screens/news_home/widgets/news_header.dart';
import 'package:newsapp/ui/screens/news_home/widgets/top_headlines_section.dart';
import 'package:newsapp/utils/language_to_locale.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  bool _showSearchedNews = false;

  final TextEditingController _searchBarController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _refreshNews();
  }

  @override
  void dispose() {
    _searchBarController.dispose();
    super.dispose();
  }

  void _refreshNews({bool forceRemoteFetch = false}) {
    final refreshNewsUS = RefreshNewsUS(context.read(), context.read());
    refreshNewsUS(context.read<SettingsCubit>().state.locale.getCountryId(), forceRemoteFetch: forceRemoteFetch);
  }

  void _searchForArticles() {
    context
        .read<EveryThingNewsCubit>()
        .searchNews(characters: _searchBarController.text, lan: context.read<SettingsCubit>().state.locale.name);
  }

  void _checkTextInput(String input) {
    if (input.length >= 3) {
      print(input);
      _searchForArticles();
      if (_showSearchedNews == false) {
        setState(
          () => _showSearchedNews = true,
        );
      }
    } else if (_showSearchedNews) {
      _refreshNews();
      setState(
        () => _showSearchedNews = false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsCubit, Settings>(
      listener: (ctx, localeState) => _refreshNews(forceRemoteFetch: true),
      child: Scaffold(
        appBar: CustomAppbar(
          checkTextInput: _checkTextInput,
          searchBarController: _searchBarController,
        ),
        drawer: const AppDrawer(
          selectedScreen: AppScreen.home,
        ),
        body: RefreshIndicator(
          onRefresh: () async => _refreshNews(),
          child: LayoutBuilder(builder: (context, constraints) {
            return constraints.maxWidth < 500
                ? CustomScrollView(
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    slivers: [
                      if (!_showSearchedNews) ...[
                        NewsHeaderWidget(title: AppLocalizations.of(context)!.topHeadlinesTitle),
                        SliverToBoxAdapter(
                          child: TopHeadlinesSection(
                            refreshNews: _refreshNews,
                          ),
                        ),
                      ],
                      NewsHeaderWidget(
                          title: _showSearchedNews
                              ? AppLocalizations.of(context)!.articlesFound
                              : AppLocalizations.of(context)!.everythingTitle),
                      EverythingSection(
                        showSearchedNews: _showSearchedNews,
                        refreshNews: _refreshNews,
                        searchBarController: _searchBarController,
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            NewsHeaderWidget(title: AppLocalizations.of(context)!.topHeadlinesTitle),
                            Expanded(
                              child: TopHeadlinesSection(
                                refreshNews: _refreshNews,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            NewsHeaderWidget(
                                title: _showSearchedNews
                                    ? AppLocalizations.of(context)!.articlesFound
                                    : AppLocalizations.of(context)!.everythingTitle),
                            EverythingSection(
                              showSearchedNews: _showSearchedNews,
                              refreshNews: _refreshNews,
                              searchBarController: _searchBarController,
                            ),
                          ],
                        ),
                      )
                    ],
                  );
          }),
        ),
      ),
    );
  }
}
