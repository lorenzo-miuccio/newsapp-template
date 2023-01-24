import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app/config/localization/locale_bloc.dart';
import 'package:news_app/ui/screens/settings/change_language_dialog.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const String routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settings),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 10,
              bottom: 10,
            ),
            child: Text(AppLocalizations.of(context)!.selectLanguage, style: const TextStyle(fontSize: 14)),
          ),
          BlocBuilder<LocaleCubit, Locale>(
            builder: (ctx, localeState) => ListTile(
              title: Text(localeState.getLanguage(context), style: const TextStyle(fontSize: 16)),
              tileColor: Colors.grey.withOpacity(0.2),
              trailing: const Icon(Icons.navigate_next),
              onTap: () => showDialog(context: context, builder: (ctx) => const ChangeLanguageDialog())
                  .then((value) => value != null ? context.read<LocaleCubit>().updateLanguage(value!) : null),
            ),
          )
        ],
      ),
    );
  }
}

extension RetrieveLanguage on Locale {
  String getLanguage(BuildContext context) =>
      languageCode == 'it' ? AppLocalizations.of(context)!.it : AppLocalizations.of(context)!.en;
}
