import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/config/dependencies/dependecies.dart';
import 'package:news_app/ui/screens/common_widgets/drawer/app_drawer.dart';
import 'package:news_app/ui/screens/saved_shared/saved_shared_screen.dart';


class SavedSharedScreenConnector extends StatelessWidget {
  final AppScreen screen;

  const SavedSharedScreenConnector(this.screen, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<SavedSharedNewsCubit>(create: (_) => readDR()),
      BlocProvider<UpdateArticleCubit>(create: (_) => readDR())
    ], child: SavedSharedScreen(screen));
  }
}
