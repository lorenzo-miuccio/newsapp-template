import 'package:news_app/domain/repository/language_repository.dart';

class GetLanguageUsecase {
  final LanguageRepository _languageRepository;

  GetLanguageUsecase(this._languageRepository);

  String call() => _languageRepository.getLanguage();
}