import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/blocs/news_fetch/everything_news_bloc.dart';
import 'package:news_app/presentation/blocs/locale_bloc.dart';
import 'package:news_app/presentation/blocs/news_fetch/top_news_bloc.dart';
import 'package:news_app/presentation/screens/common_widgets/drawer/app_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app/presentation/screens/common_widgets/drawer/drawer_icon_appbar.dart';
import 'package:news_app/presentation/screens/news_home/widgets/everything_section.dart';
import 'package:news_app/presentation/screens/news_home/widgets/news_header.dart';
import 'package:news_app/presentation/screens/news_home/widgets/top_headlines_section.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  bool _searchBarVisibility = false;
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
    context
        .read<TopNewsCubit>()
        .getTopNews(context.read<LocaleCubit>().state.countryCode!, forceRemoteFetch: forceRemoteFetch);
    context.read<EveryThingNewsCubit>().getEverythingNews();
  }

  void _searchForArticles() {
    context
        .read<EveryThingNewsCubit>()
        .searchNews(characters: _searchBarController.text, lan: context.read<LocaleCubit>().state.languageCode);
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
    return BlocListener<LocaleCubit, Locale>(
      listener: (ctx, localeState) => _refreshNews(forceRemoteFetch: true),
      child: Scaffold(
        appBar: AppBar(
          leading: const DrawerIconAppBar(),
          title: _searchBarVisibility
              ? null
              : const Text(
                  'newsapp',
                ),
          actions: [
            AnimatedContainer(
              //sistemare animazione
              duration: const Duration(milliseconds: 300),
              width: _searchBarVisibility ? MediaQuery.of(context).size.width * 0.7 : 0,
              child: _searchBarVisibility
                  ? TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)!.searchArticles,
                      ),
                      controller: _searchBarController,
                      onChanged: _checkTextInput)
                  : null,
            ),
            IconButton(
              onPressed: _searchBarVisibility ? null : () => setState(() => _searchBarVisibility = true),
              icon: const Icon(Icons.search),
            )
          ],
        ),
        drawer: const AppDrawer(
          selectedScreen: AppScreen.home,
        ),
        body: RefreshIndicator(
          onRefresh: () async => _refreshNews(),
          child: CustomScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              if (!_showSearchedNews) ...[
                NewsHeaderWidget(title: AppLocalizations.of(context)!.topHeadlinesTitle),
                TopHeadlinesSection(
                  refreshNews: _refreshNews,
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
          ),
        ),
      ),
    );
  }
}
