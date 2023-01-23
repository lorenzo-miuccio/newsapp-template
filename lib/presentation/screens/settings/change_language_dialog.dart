import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/presentation/blocs/locale_bloc.dart';
import 'package:news_app/presentation/localization/locales_list.dart';
import 'package:news_app/presentation/screens/settings/settings_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChangeLanguageDialog extends StatefulWidget {
  const ChangeLanguageDialog({Key? key}) : super(key: key);

  @override
  State<ChangeLanguageDialog> createState() => _ChangeLanguageDialogState();
}

class _ChangeLanguageDialogState extends State<ChangeLanguageDialog> {
  late Locale _currentLocale;
  bool _enableConfirmButton = false;

  @override
  void initState() {
    super.initState();
    _currentLocale = context.read<LocaleCubit>().state;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...locales.map(
            (locale) => RadioListTile(
              title: Text(
                locale.getLanguage(context),
                style: TextStyle(
                    color: _currentLocale != locale ? Theme.of(context).primaryColor : Colors.grey, fontSize: 16),
              ),
              value: locale,
              groupValue: _currentLocale,
              onChanged: (value) {
                setState(() {
                  _enableConfirmButton = true;
                  _currentLocale = value!;
                });
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(AppLocalizations.of(context)!.cancel),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: _enableConfirmButton ? () => Navigator.of(context).pop(_currentLocale) : null,
                  child: Text(AppLocalizations.of(context)!.confirm),
                ),
              ),
            ],
          )
        ],
      ),
    );
    ;
  }
}