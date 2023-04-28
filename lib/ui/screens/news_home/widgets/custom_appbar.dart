import 'package:flutter/material.dart';

import '../../common_widgets/drawer/drawer_icon_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  final void Function(String) checkTextInput;
  final TextEditingController searchBarController;

  const CustomAppbar({required this.checkTextInput, Key? key, required this.searchBarController}) : super(key: key);

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppbarState extends State<CustomAppbar> {
  bool _searchBarVisibility = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const DrawerIconAppBar(),
      title: _searchBarVisibility
          ? null
          : const Text(
              'newsapp',
            ),
      actions: [
        AnimatedContainer(
          //sistemare animazione
          duration: const Duration(milliseconds: 300),
          width: _searchBarVisibility ? MediaQuery.of(context).size.width * 0.7 : 0,
          child: _searchBarVisibility
              ? TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)!.searchArticles,
                  ),
                  controller: widget.searchBarController,
                  onChanged: widget.checkTextInput)
              : null,
        ),
        IconButton(
          onPressed: _searchBarVisibility ? null : () => setState(() => _searchBarVisibility = true),
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
