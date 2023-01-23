import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:news_app/domain/entity/article.dart';
import 'package:news_app/presentation/blocs/news_fetch/news_fetch_state.dart';
import 'package:news_app/presentation/blocs/news_fetch/saved_shared_news_bloc.dart';
import 'package:news_app/presentation/blocs/update_article/article_update_state.dart';
import 'package:news_app/presentation/blocs/update_article/update_article_bloc.dart';
import 'package:news_app/presentation/screens/common_widgets/drawer/app_drawer.dart';
import 'package:news_app/presentation/screens/common_widgets/error_widgets/generic_error.dart';
import 'package:news_app/presentation/screens/common_widgets/loading_widget.dart';
import 'package:news_app/presentation/screens/news_home/widgets/article_item.dart';
import 'package:news_app/presentation/screens/saved_shared/empty_section_widget.dart';
import 'package:news_app/presentation/utils/update_snackbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SavedSharedNewsList extends StatelessWidget {
  final void Function() refresh;
  final AppScreen screen;

  const SavedSharedNewsList(this.refresh, {Key? key, required this.screen}) : super(key: key);

  void _removeFromSaveOrShare(BuildContext context, Article article) {
    final updateArticleCubit = context.read<UpdateArticleCubit>();
    screen == AppScreen.shared
        ? updateArticleCubit.shareOrRemoveArticle(article)
        : updateArticleCubit.saveOrRemoveArticle(article);
  }

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;

    return BlocListener<UpdateArticleCubit, ArticleUpdateState>(
      listener: (context, state) => state.maybeWhen(
          savedStatus: (_) {
            showUpdateSnackBar(context, appLocalizations.removed(appLocalizations.saved));
            refresh();
          },
          sharedStatus: (status) {
            showUpdateSnackBar(context, appLocalizations.removed(appLocalizations.shared));
            refresh();
          },
          error: (_) => showUpdateSnackBar(context, 'An error occured'),
          orElse: () {}),
      child: BlocBuilder<SavedSharedNewsCubit, NewsFetchState>(
        builder: (ctx, state) {
          return state.maybeWhen(
            hasData: (articles, _, __) {
              return articles.isEmpty
                  ? const EmptySectionWidget()
                  : ListView.builder(
                      itemCount: articles.length,
                      itemBuilder: (BuildContext context, int index) => Slidable(
                          key: ValueKey(articles[index]),
                          endActionPane: ActionPane(
                            extentRatio: 0.3,
                            motion: const DrawerMotion(),
                            dismissible: DismissiblePane(onDismissed: () {}),
                            children: [
                              SlidableAction(
                                onPressed: (ctx) => _removeFromSaveOrShare(ctx, articles[index]),
                                backgroundColor: const Color(0xFFFE4A49),
                                foregroundColor: Colors.white,
                                icon: Icons.delete,
                              ),
                            ],
                          ),
                          child: ArticleItem(articles[index], refresh)),
                    );
            },
            loading: () => const LoadingWidget(),
            orElse: () => const GenericErrorWidget(),
          );
        },
      ),
    );
  }
}
