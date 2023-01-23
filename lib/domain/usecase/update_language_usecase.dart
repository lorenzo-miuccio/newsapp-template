import 'package:news_app/domain/repository/language_repository.dart';

class UpdateLanguageUsecase {
  final LanguageRepository _languageRepository;

  UpdateLanguageUsecase(this._languageRepository);

  void call(String language) => _languageRepository.updateLanguage(language);
}