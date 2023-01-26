import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:newsapp_template/config/dependencies/dependecies.dart';
import 'package:newsapp_template/config/theme.dart';
import 'package:newsapp_template/utils/language_to_locale.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:newsapp_template/utils/routing.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsCubit>(
      create: (_) => readDR(),
      child: BlocBuilder<SettingsCubit, Settings>(
        builder: (ctx, settingState) => MaterialApp.router(
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
          locale: settingState.locale.getLocale(),
          supportedLocales: Language.values.map((e) => e.getLocale()),
          routerConfig: routerConfig,
        ),
      ),
    );
  }
}
