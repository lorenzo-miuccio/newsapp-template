
abstract class Env {
  String get appName;

  String get baseUrl;

  factory Env.dev() = _Dev;

  factory Env.prod() = _Prod;
}

class _Dev implements Env {
  @override
  String get appName => 'Bloc Template DEV';

  @override
  String get baseUrl => "https://newsapi.org/v2";

}

class _Prod implements Env {
  @override
  String get appName => 'Bloc Template PROD';

  @override
  String get baseUrl => "https://newsapi.org/v2";
}
