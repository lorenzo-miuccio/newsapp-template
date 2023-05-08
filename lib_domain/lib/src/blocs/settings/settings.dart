import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

enum Language{
  en,
  it;

  static Language get fallback => Language.en;

}


@freezed
class Settings with _$Settings {
  const factory Settings({
    required Language language,
  }) = _Settings;
}