import 'package:dartz/dartz.dart';
import '../entities/bill.dart';
import '../repositories/bill_repository.dart';
import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';

/// Returns all bills sorted newest-first from local Isar DB.
class GetBillHistoryUseCase implements NoParamUseCase<List<Bill>> {
  final BillRepository repository;
  GetBillHistoryUseCase(this.repository);

  @override
  Future<Either<Failure, List<Bill>>> call() => repository.getBillHistory();
}
