import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ArticleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ArticleAppBar({Key? key, required this.source}) : super(key: key);

  final String source;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          }),
      title: ListTile(
        leading: const CircleAvatar(backgroundImage: AssetImage('./assets/images/splash_screen.png')),
        title: Text(AppLocalizations.of(context)!.published),
        subtitle: Text(source),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
