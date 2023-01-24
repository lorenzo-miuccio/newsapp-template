// Exception thrown for a connection issue, for example no wifi

class NoConnectionException implements Exception {
  final String? _message;

  NoConnectionException([this._message]);

  @override
  String toString() => _message == null ? 'Error during communication' : 'Error during communication: $_message';
}

// Exception thrown if the server responded with a status not equal to 200
class HttpStatusException implements Exception {
  final String? _message;

  HttpStatusException([this._message]);

  @override
  String toString() => _message == null ? 'Http status error' : 'Request failed with status: $_message';

}

class DatabaseException implements Exception {
  final String? _message;

  DatabaseException([this._message]);

  @override
  String toString() => _message == null ? 'Database error' : 'Database error: $_message';
}
