import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:newsapp/utils/update_snackbar.dart';

import 'package:share_plus/share_plus.dart';

class ArticleBottomBar extends StatefulWidget {
  const ArticleBottomBar(this.article,
      {Key? key, required this.changeVisibility, required this.visibilityFeature, required this.updateArticle})
      : super(key: key);

  final void Function() changeVisibility;
  final void Function(Article) updateArticle;
  final bool visibilityFeature;
  final Article article;

  @override
  State<ArticleBottomBar> createState() => _ArticleBottomBarState();
}

class _ArticleBottomBarState extends State<ArticleBottomBar> {
  late Article _article = widget.article;

  void _shareArticle(BuildContext context) {
    Share.shareWithResult('Check this article! ${_article.url}').then((value) {
      value.status == ShareResultStatus.success && !_article.isShared ? _addToShared(context) : null;
    });
  }

  void _addToShared(BuildContext context) => StoreProvider.of<AppState>(context, listen: false).dispatch(UpdateArticleActions.shareOrUnShare(_article));

  void _addOrRemoveSave(BuildContext context) => StoreProvider.of<AppState>(context, listen: false).dispatch(UpdateArticleActions.saveOrUnSave(_article));

  void _updateArticleNotification(UpdateStatus status) {
    showUpdateSnackBar(context, status);

    final updatedArticle = _article.copyWith(
        isSaved: status == UpdateStatus.addedToSaved || status == UpdateStatus.removedFromSaved
            ? !_article.isSaved
            : _article.isSaved,
        isShared: status == UpdateStatus.addedToShared || status == UpdateStatus.removedFromShared
            ? !_article.isShared
            : _article.isShared);

    setState(() => _article = updatedArticle);
    widget.updateArticle(updatedArticle);
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ArticleUpdateState>(
      converter: (store) => store.state.articleUpdateState,
      rebuildOnChange: false,
      onWillChange: (_, state) => state.whenOrNull(
        savedStatus: (status) {
          status
              ? _updateArticleNotification(UpdateStatus.addedToSaved)
              : _updateArticleNotification(UpdateStatus.removedFromSaved);
          return;
        },
        sharedStatus: (status) {
          status
              ? _updateArticleNotification(UpdateStatus.addedToShared)
              : _updateArticleNotification(UpdateStatus.removedFromShared);
          return;
        },
        error: (_) => _updateArticleNotification(UpdateStatus.error),
      ),
      builder: (_, __) => Container(
        height: 80,
        color: Colors.grey.withOpacity(0.3),
        child: ButtonTheme(
          buttonColor: Theme.of(context).primaryColor,
          child: Row(
            children: [
              IconButton(
                onPressed: () => _addOrRemoveSave(context),
                icon: _article.isSaved ? const Icon(Icons.bookmark_outlined) : const Icon(Icons.bookmark_border),
              ),
              IconButton(
                onPressed: () => _shareArticle(context),
                icon: _article.isShared ? const Icon(Icons.share) : const Icon(Icons.share_outlined),
              ),
              IconButton(
                  onPressed: widget.changeVisibility,
                  icon: widget.visibilityFeature
                      ? const Icon(Icons.visibility_off_outlined)
                      : const Icon(Icons.visibility_outlined))
            ],
          ),
        ),
      ),
    );
  }
}
