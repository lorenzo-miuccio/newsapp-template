import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:newsapp/ui/screens/common_widgets/drawer/app_drawer.dart';
import 'package:newsapp/ui/screens/common_widgets/drawer/drawer_icon_appbar.dart';
import 'package:newsapp/ui/screens/saved_shared/saved_shared_news_list.dart';


class SavedSharedScreen extends StatefulWidget {
  final AppScreen screen;

  const SavedSharedScreen(this.screen, {Key? key}) : super(key: key);

  static const String savedRouteName = '/saved';
  static const String sharedRouteName = '/shared';

  @override
  State<SavedSharedScreen> createState() => _SavedSharedScreenState();
}

class _SavedSharedScreenState extends State<SavedSharedScreen> {
  void  _refreshList() =>
      context.read<SavedSharedNewsCubit>().getSavedOrSharedNews(saved: widget.screen == AppScreen.saved);

  @override
  void initState() {
    _refreshList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const DrawerIconAppBar(),
        title: Text(
            widget.screen == AppScreen.saved ? AppLocalizations.of(context)!.saved : AppLocalizations.of(context)!.shared),
      ),
      drawer: AppDrawer(
        selectedScreen: widget.screen,
      ),
      body: SavedSharedNewsList(_refreshList, screen: widget.screen,),
    );
  }
}
