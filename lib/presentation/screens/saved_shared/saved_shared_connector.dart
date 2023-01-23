import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/blocs/news_fetch/saved_shared_news_bloc.dart';
import 'package:news_app/presentation/blocs/update_article/update_article_bloc.dart';
import 'package:news_app/presentation/injection/providers.dart';
import 'package:news_app/presentation/screens/common_widgets/drawer/app_drawer.dart';
import 'package:news_app/presentation/screens/saved_shared/saved_shared_screen.dart';

class SavedSharedScreenConnector extends StatelessWidget {
  final AppScreen screen;

  const SavedSharedScreenConnector(this.screen, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<SavedSharedNewsCubit>(create: (_) => getIt()),
      BlocProvider<UpdateArticleCubit>(create: (_) => getIt())
    ], child: SavedSharedScreen(screen));
  }
}
