import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/config/dependencies/dependecies.dart';
import 'package:newsapp/config/theme.dart';
import 'package:newsapp/ui/screens/article/article_screen.dart';
import 'package:newsapp/ui/screens/article/article_screen_connector.dart';
import 'package:newsapp/ui/screens/common_widgets/drawer/app_drawer.dart';
import 'package:newsapp/ui/screens/news_home/news_screen_connector.dart';
import 'package:newsapp/ui/screens/saved_shared/saved_shared_connector.dart';
import 'package:newsapp/ui/screens/saved_shared/saved_shared_screen.dart';
import 'package:newsapp/ui/screens/settings/settings_screen.dart';
import 'package:newsapp/utils/language_to_locale.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsCubit>(
      create: (_) => readDR(),
      child: BlocBuilder<SettingsCubit, Settings>(
        builder: (ctx, settingState) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'News App',
          theme: getThemeDataByMode(darkMode: false),
          darkTheme: getThemeDataByMode(darkMode: true),
          themeMode: ThemeMode.system,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: settingState.language.locale,
          supportedLocales: Language.values.map((e) => e.locale),
          routes: {
            '/': (_) => const NewsScreenConnector(),
            SavedSharedScreen.sharedRouteName: (_) => const SavedSharedScreenConnector(AppScreen.shared),
            SavedSharedScreen.savedRouteName: (_) => const SavedSharedScreenConnector(AppScreen.saved),
            SettingsScreen.routeName: (_) => const SettingsScreen(),
            ArticleScreen.routeName: (_) => const ArticleScreenConnector(),
          },
        ),
      ),
    );
  }
}
