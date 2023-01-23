import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/blocs/update_article/update_article_bloc.dart';
import 'package:news_app/presentation/config/dependecies.dart';
import 'package:news_app/presentation/screens/article/article_screen.dart';

class ArticleScreenConnector extends StatelessWidget {
  const ArticleScreenConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return BlocProvider<UpdateArticleCubit>(
      create: (_) => readDR(),
      child: ArticleScreen(),
    );
  }
}
