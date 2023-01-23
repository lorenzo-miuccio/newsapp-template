import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/domain/usecase/get_language_usecase.dart';
import 'package:news_app/domain/usecase/update_language_usecase.dart';
import 'package:news_app/presentation/localization/locales_list.dart';

class LocaleCubit extends Cubit<Locale> {
  final UpdateLanguageUsecase _updateLanguageUsecase;

  LocaleCubit(this._updateLanguageUsecase, GetLanguageUsecase getLanguageUsecase)
      : super(locales.firstWhere((locale) => locale.languageCode == getLanguageUsecase(),
            orElse: () => window.locales[0]));

  void updateLanguage(Locale newLocale) {
    _updateLanguageUsecase(newLocale.languageCode);
    emit(newLocale);
  }
}
