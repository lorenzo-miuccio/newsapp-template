import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/ui/screens/common_widgets/error_widgets/generic_error.dart';
import 'package:newsapp/ui/screens/common_widgets/loading_widget.dart';
import 'package:newsapp/ui/screens/news_home/widgets/article_item.dart';
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
    return BlocBuilder<EveryThingNewsCubit, NewsFetchState>(
      builder: (ctx, state) {
        return state.maybeWhen(
          hasData: (articles, _, __) {
            checkToRemoveSplashScreen(context.read<TopNewsCubit>().state);
            return SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(
                (ctx, index) => ArticleItem(articles[index], showSearchedNews ? () => () {} : refreshNews),
                childCount: articles.length,
              ),
              itemExtent: 70,
            );
          },
          loading: () => const SliverFillRemaining(child: LoadingWidget()),
          orElse: () => const SliverFillRemaining(child: GenericErrorWidget()),
        );
      },
    );
  }
}
