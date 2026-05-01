import 'package:equatable/equatable.dart';

/// Base class for all domain-layer failures.
/// Failures are expected, handled error conditions (not programming bugs).
abstract class Failure extends Equatable {
  final String message;
  const Failure({required this.message});

  @override
  List<Object?> get props => [message];
}

// ─── Network & Connectivity ────────────────────────────────────────
class NetworkFailure extends Failure {
  const NetworkFailure({super.message = 'انٹرنیٹ کنکشن نہیں ہے'});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message});
}

class TimeoutFailure extends Failure {
  const TimeoutFailure({super.message = 'کنکشن میں بہت وقت لگا'});
}

// ─── OCR / Bill Parsing ───────────────────────────────────────────
class OcrFailure extends Failure {
  const OcrFailure({required super.message});
}

class BillParsingFailure extends Failure {
  const BillParsingFailure({required super.message});
}

class InvalidBillFailure extends Failure {
  const InvalidBillFailure(
      {super.message = 'یہ بجلی کا بل نہیں لگتا — واضح تصویر لیں'});
}

// ─── Local Storage ────────────────────────────────────────────────
class CacheFailure extends Failure {
  const CacheFailure({required super.message});
}

class StorageFailure extends Failure {
  const StorageFailure({required super.message});
}

// ─── Auth ─────────────────────────────────────────────────────────
class AuthFailure extends Failure {
  const AuthFailure({required super.message});
}

class SessionExpiredFailure extends Failure {
  const SessionExpiredFailure({super.message = 'سیشن ختم ہو گیا — دوبارہ لاگ ان کریں'});
}

// ─── Permission ───────────────────────────────────────────────────
class PermissionFailure extends Failure {
  const PermissionFailure({required super.message});
}

// ─── Unexpected ───────────────────────────────────────────────────
class UnexpectedFailure extends Failure {
  const UnexpectedFailure({super.message = 'کچھ غلط ہو گیا — دوبارہ کوشش کریں'});
}
