import 'dart:ui';

import 'package:data/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KeyValueServiceImpl implements KeyValueService {
  final SharedPreferences _prefs;

  KeyValueServiceImpl(this._prefs);

  @override
  String getLanguage() => _prefs.getString('language') ?? window.locales[0].languageCode;

  @override
  void updateLanguage(String language) => _prefs.setString('language', language);
}
