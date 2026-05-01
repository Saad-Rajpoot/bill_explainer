import 'package:dartz/dartz.dart';
import '../errors/failures.dart';

/// Base use-case contract.
/// Every use-case returns [Either<Failure, Type>] — never throws.
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

/// Use-case with no parameters.
abstract class NoParamUseCase<Type> {
  Future<Either<Failure, Type>> call();
}

/// Marker class for use-cases that take no parameters.
class NoParams {}
