import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class PublishDateReadtimeWidget extends StatelessWidget {
  final DateTime publishDate;
  final int readTime;

  const PublishDateReadtimeWidget({Key? key, required this.publishDate, required this.readTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${DateFormat('dd/MM/yyyy').format(publishDate)} - ${AppLocalizations.of(context)!.readTime(readTime)}',
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}
