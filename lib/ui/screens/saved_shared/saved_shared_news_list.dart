import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:newsapp/ui/screens/common_widgets/drawer/app_drawer.dart';
import 'package:newsapp/ui/screens/common_widgets/error_widgets/generic_error.dart';
import 'package:newsapp/ui/screens/common_widgets/loading_widget.dart';
import 'package:newsapp/ui/screens/news_home/widgets/article_item.dart';
import 'package:newsapp/ui/screens/saved_shared/empty_section_widget.dart';
import 'package:newsapp/utils/update_snackbar.dart';
import 'package:redux/redux.dart';

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

    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      distinct: true,
      onDidChange: (previousVm, currentVm) => currentVm.articleUpdateState.whenOrNull(
        savedStatus: (_) {
          showUpdateSnackBar(context, UpdateStatus.removedFromSaved);
          refresh();
        },
        sharedStatus: (_) {
          showUpdateSnackBar(context, UpdateStatus.removedFromShared);
          refresh();
        },
        error: (_) => showUpdateSnackBar(context, UpdateStatus.error),
      ),
      builder: (ctx, vm) {
        return vm.savedNewsState.maybeWhen(
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
    );
  }
}

class _ViewModel {
  final ArticleUpdateState articleUpdateState;
  final NewsFetchState savedNewsState;

  _ViewModel({required this.articleUpdateState, required this.savedNewsState});

  factory _ViewModel.fromStore(Store<AppState> store) =>
      _ViewModel(articleUpdateState: store.state.articleUpdateState, savedNewsState: store.state.savedNewsState);
}
