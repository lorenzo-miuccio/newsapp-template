import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:newsapp/ui/screens/common_widgets/error_widgets/generic_error.dart';
import 'package:newsapp/ui/screens/common_widgets/loading_widget.dart';
import 'package:newsapp/ui/screens/news_home/widgets/article_item.dart';
import 'package:newsapp/utils/check_device_dimension.dart';
import 'package:newsapp/utils/remove_splash_screen.dart';

class EverythingSection extends StatelessWidget {
  final bool showSearchedNews;
  final void Function() refreshNews;

  final TextEditingController searchBarController;

  const EverythingSection(
      {Key? key, required this.showSearchedNews, required this.refreshNews, required this.searchBarController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return StoreConnector<AppState, NewsFetchState>(
      converter: (store) => store.state.everyThingNewsState,
      builder: (ctx, state) {
        return state.maybeWhen(
          hasData: (articles, _, __) {
            return isSmallDevice(width)
                ? SliverFixedExtentList(
                    delegate: SliverChildBuilderDelegate(
                      (ctx, index) => ArticleItem(articles[index], showSearchedNews ? () => () {} : refreshNews),
                      childCount: articles.length,
                    ),
                    itemExtent: 70,
                  )
                : Expanded(
                  child: ListView.builder(
                      itemBuilder: (ctx, index) => ArticleItem(articles[index], showSearchedNews ? null : refreshNews),
                      itemExtent: 70,
                      itemCount: articles.length,
                    ),
                );
          },
          loading: () =>
              isSmallDevice(width) ? const SliverFillRemaining(child: LoadingWidget()) : const LoadingWidget(),
          orElse: () => isSmallDevice(width)
              ? const SliverFillRemaining(child: GenericErrorWidget())
              : const GenericErrorWidget(),
        );
      },
    );
  }
}
