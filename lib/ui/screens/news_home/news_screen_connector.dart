import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/config/dependencies/dependecies.dart';
import 'package:news_app/ui/screens/news_home/news_screen.dart';



class NewsScreenConnector extends StatelessWidget {
  const NewsScreenConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<TopNewsCubit>(create: (_) => readDR()),
          BlocProvider<EveryThingNewsCubit>(create: (_) => readDR()),
        ],
        child: const NewsScreen());
  }
}
