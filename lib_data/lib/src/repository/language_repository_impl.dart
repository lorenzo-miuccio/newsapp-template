import 'package:data/src/key_value_service.dart';
import 'package:domain/domain.dart';


class LanguageRepositoryImpl implements LanguageRepository {

  final KeyValueService _keyValueService;

  LanguageRepositoryImpl(this._keyValueService);

  @override
  void updateLanguage(String language) => _keyValueService.updateLanguage(language);

  @override
  String getLanguage() => _keyValueService.getLanguage();
}