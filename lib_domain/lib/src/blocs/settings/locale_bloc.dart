import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:domain/domain.dart';

class SettingsCubit extends Cubit<Settings> {
  final LanguageRepository _languageRepository;

  SettingsCubit(this._languageRepository) : super(_mapper(_languageRepository.getLanguage()));

  void updateLanguage(Language newLocale) {
    _languageRepository.updateLanguage(newLocale.name);
    emit(state.copyWith(language: newLocale));
  }

  static Settings _mapper(String locale) =>
      Settings(language: Language.values.firstWhereOrNull((e) => e.name == locale) ?? Language.fallback);
}
