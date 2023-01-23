import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:news_app/presentation/blocs/locale_bloc.dart';
import 'package:news_app/presentation/injection/providers.dart';
import 'package:news_app/presentation/localization/locales_list.dart';
import 'package:news_app/presentation/screens/common_widgets/drawer/app_drawer.dart';
import 'package:news_app/presentation/screens/article/article_screen.dart';
import 'package:news_app/presentation/screens/article/article_screen_connector.dart';
import 'package:news_app/presentation/screens/news_home/news_screen_connector.dart';
import 'package:news_app/presentation/screens/saved_shared/saved_shared_connector.dart';
import 'package:news_app/presentation/screens/saved_shared/saved_shared_screen.dart';
import 'package:news_app/presentation/screens/settings/settings_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:news_app/presentation/theme.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocaleCubit>(
      create: (_) => getIt(),
      child: BlocBuilder<LocaleCubit, Locale>(
        builder: (ctx, selectedLocale) => MaterialApp(
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
          locale: selectedLocale,
          supportedLocales: locales,
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
