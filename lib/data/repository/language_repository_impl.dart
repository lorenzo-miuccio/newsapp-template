import 'package:news_app/data/key_value_service.dart';
import 'package:news_app/domain/repository/language_repository.dart';

class LanguageRepositoryImpl implements LanguageRepository {

  final KeyValueService _keyValueService;

  LanguageRepositoryImpl(this._keyValueService);

  @override
  void updateLanguage(String language) => _keyValueService.updateLanguage(language);

  @override
  String getLanguage() => _keyValueService.getLanguage();
}