import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum UpdateStatus { addedToSaved, removedFromSaved, addedToShared, removedFromShared, error }

void showUpdateSnackBar(BuildContext context, UpdateStatus status) {
  final appLocalizations = AppLocalizations.of(context)!;

  void buildSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 2),
      content: Text(message),
    ));
  }

  switch (status) {
    case UpdateStatus.addedToSaved:
      buildSnackBar(appLocalizations.added(appLocalizations.saved));
      break;
    case UpdateStatus.removedFromSaved:
      buildSnackBar(appLocalizations.removed(appLocalizations.saved));
      break;
    case UpdateStatus.addedToShared:
      buildSnackBar(appLocalizations.added(appLocalizations.shared));
      break;
    case UpdateStatus.error:
      buildSnackBar('An error occurred');
      break;
    case UpdateStatus.removedFromShared:
      buildSnackBar(appLocalizations.removed(appLocalizations.shared));
      break;
  }
}
