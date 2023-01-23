import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/domain/entity/article.dart';
import 'package:news_app/presentation/blocs/update_article/article_update_state.dart';
import 'package:news_app/presentation/blocs/update_article/update_article_bloc.dart';
import 'package:news_app/presentation/injection/providers.dart';
import 'package:news_app/presentation/screens/article/article_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app/presentation/utils/update_snackbar.dart';

class ArticleScreenConnector extends StatelessWidget {
  const ArticleScreenConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return BlocProvider<UpdateArticleCubit>(
      create: (_) => getIt(),
      child: ArticleScreen(),
    );
  }
}
