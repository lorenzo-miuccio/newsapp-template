import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:newsapp_template/ui/screens/news_home/widgets/drawer_text_button.dart';
import 'package:newsapp_template/ui/screens/saved_shared/saved_shared_screen.dart';
import 'package:newsapp_template/ui/screens/settings/settings_screen.dart';
import 'package:newsapp_template/utils/routing.dart';

enum AppScreen {
  home,
  saved,
  shared,
  settings,
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({required this.selectedScreen, Key? key}) : super(key: key);

  final AppScreen selectedScreen;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const Icon(Icons.slideshow),
              trailing: IconButton(
                icon: const Icon(Icons.tune),
                onPressed: () => context.push(AppRoutes.settings),
              ),
              title: const Text('newsapp'),
            ),
            DrawerTextButton(
              icon: Icons.home_filled,
              label: 'Home',
              navigationRoute: AppRoutes.home,
              isSelected: selectedScreen == AppScreen.home,
            ),
            DrawerTextButton(
              icon: Icons.bookmark_border,
              label: AppLocalizations.of(context)!.saved,
              navigationRoute: AppRoutes.saved,
              isSelected: selectedScreen == AppScreen.saved,
            ),
            DrawerTextButton(
              icon: Icons.share,
              label: AppLocalizations.of(context)!.shared,
              navigationRoute: AppRoutes.shared,
              isSelected: selectedScreen == AppScreen.shared,
            ),
          ],
        ),
      ),
    );
  }
}
