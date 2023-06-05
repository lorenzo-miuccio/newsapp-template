import 'package:domain/domain.dart';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:newsapp/ui/screens/settings/change_language_dialog.dart';
import 'package:redux/redux.dart';

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
          StoreConnector<AppState, _ViewModel>(
            converter: _ViewModel.fromStore,
            distinct: true,
            builder: (ctx, vm) => ListTile(
              title: Text(vm.language.getLanguage(context), style: const TextStyle(fontSize: 16)),
              tileColor: Colors.grey.withOpacity(0.2),
              trailing: const Icon(Icons.navigate_next),
              onTap: () => showDialog(context: context, builder: (ctx) => const ChangeLanguageDialog())
                  .then((value) => value != null ? vm.updateLanguage(value!) : null),
            ),
          )
        ],
      ),
    );
  }
}

class _ViewModel {
  final Language language;
  final void Function(Language) updateLanguage;

  _ViewModel({required this.language, required this.updateLanguage});

  factory _ViewModel.fromStore(Store<AppState> store) {
    final language = store.state.settingsState.language;

    void updateLanguage(Language newLanguage) => store.dispatch(SettingsActions.updateLanguage(newLanguage));

    return _ViewModel(language: language, updateLanguage: updateLanguage);
  }

  @override
  bool operator ==(Object other) => other is _ViewModel && other.language == language;

  @override
  int get hashCode => language.hashCode;
}

extension RetrieveLanguage on Language {
  String getLanguage(BuildContext context) =>
      name == 'it' ? AppLocalizations.of(context)!.it : AppLocalizations.of(context)!.en;
}
