/// Data-layer exceptions.
/// These are caught in repositories and mapped to [Failure] objects.
class ServerException implements Exception {
  final String message;
  const ServerException({required this.message});
}

class NetworkException implements Exception {
  final String message;
  const NetworkException({this.message = 'No internet connection'});
}

class OcrException implements Exception {
  final String message;
  const OcrException({required this.message});
}

class BillParsingException implements Exception {
  final String message;
  const BillParsingException({required this.message});
}

class CacheException implements Exception {
  final String message;
  const CacheException({required this.message});
}

class PermissionException implements Exception {
  final String message;
  const PermissionException({required this.message});
}

class AuthException implements Exception {
  final String message;
  const AuthException({required this.message});
}

class StorageException implements Exception {
  final String message;
  const StorageException({required this.message});
}
