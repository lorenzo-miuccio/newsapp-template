import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:domain/domain.dart';

class LocaleCubit extends Cubit<Settings> {

  final LanguageRepository _languageRepository;

  LocaleCubit(this._languageRepository)
      : super(_mapper(_languageRepository.getLanguage()));

  void updateLanguage(Language newLocale) {
    _languageRepository.updateLanguage(newLocale.name);
    emit(state.copyWith(locale: newLocale));
  }
}

Settings _mapper(String locale) => Settings(locale: Language.values.firstWhereOrNull((e) => e.name == locale) ?? Language.fallback);