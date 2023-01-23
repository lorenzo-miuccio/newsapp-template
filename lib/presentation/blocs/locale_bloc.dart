import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/domain/repository/language_repository.dart';
import 'package:news_app/domain/usecase/get_language_usecase.dart';
import 'package:news_app/presentation/localization/locales_list.dart';

class LocaleCubit extends Cubit<Locale> {

  final LanguageRepository _languageRepository;

  LocaleCubit(GetLanguageUsecase getLanguageUsecase, this._languageRepository)
      : super(locales.firstWhere((locale) => locale.languageCode == getLanguageUsecase(),
            orElse: () => window.locales[0]));

  void updateLanguage(Locale newLocale) {
    _languageRepository.updateLanguage(newLocale.languageCode);
    emit(newLocale);
  }
}
