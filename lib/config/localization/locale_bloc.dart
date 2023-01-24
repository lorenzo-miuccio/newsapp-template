import 'dart:ui';

import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/config/localization/locales_list.dart';


class LocaleCubit extends Cubit<Locale> {

  final LanguageRepository _languageRepository;

  LocaleCubit(this._languageRepository)
      : super(locales.firstWhere((locale) => locale.languageCode == _languageRepository.getLanguage(),
            orElse: () => window.locales[0]));

  void updateLanguage(Locale newLocale) {
    _languageRepository.updateLanguage(newLocale.languageCode);
    emit(newLocale);
  }
}
