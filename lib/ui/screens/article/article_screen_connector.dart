import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp_template/config/dependencies/dependecies.dart';
import 'package:newsapp_template/ui/screens/article/article_screen.dart';

class ArticleScreenConnector extends StatelessWidget {
  final Article article;

  const ArticleScreenConnector({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UpdateArticleCubit>(
      create: (_) => readDR(),
      child: ArticleScreen(article),
    );
  }
}
