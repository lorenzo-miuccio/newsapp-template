import 'dart:ui';

import 'package:domain/domain.dart';

extension MapLocale on Language {
  Locale get locale => Locale(name);
  String getCountryId() => name == 'en' ? 'US' : 'IT';
}