import 'package:json_annotation/json_annotation.dart';

class EpochDateTimeConverter implements JsonConverter<DateTime, int> {
  const EpochDateTimeConverter();

  @override
  DateTime fromJson(int json) => DateTime.fromMillisecondsSinceEpoch(json);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch;
}

class BooleanConverter implements JsonConverter<bool, int> {
  const BooleanConverter();

  @override
  bool fromJson(int json) => json == 1 ? true : false;

  @override
  int toJson(bool object) => object ? 1 : 0;
}