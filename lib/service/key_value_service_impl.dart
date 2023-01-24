import 'dart:ui';

import '../../lib_data/lib/src/key_value_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KeyValueServiceImpl implements KeyValueService {
  final SharedPreferences _prefs;

  KeyValueServiceImpl(this._prefs);

  @override
  String getLanguage() => _prefs.getString('language') ?? window.locales[0].languageCode;

  @override
  void updateLanguage(String language) => _prefs.setString('language', language);
}
