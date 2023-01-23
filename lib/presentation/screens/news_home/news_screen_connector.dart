import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/blocs/news_fetch/everything_news_bloc.dart';
import 'package:news_app/presentation/blocs/news_fetch/top_news_bloc.dart';
import 'package:news_app/presentation/injection/providers.dart';
import 'package:news_app/presentation/screens/news_home/news_screen.dart';


class NewsScreenConnector extends StatelessWidget {
  const NewsScreenConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<TopNewsCubit>(create: (_) => getIt()),
          BlocProvider<EveryThingNewsCubit>(create: (_) => getIt()),
        ],
        child: const NewsScreen());
  }
}
