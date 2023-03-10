import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/config/dependencies/dependecies.dart';
import 'package:newsapp/ui/screens/article/article_screen.dart';

class ArticleScreenConnector extends StatelessWidget {
  const ArticleScreenConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return BlocProvider<UpdateArticleCubit>(
      create: (_) => readDR(),
      child: const ArticleScreen(),
    );
  }
}
