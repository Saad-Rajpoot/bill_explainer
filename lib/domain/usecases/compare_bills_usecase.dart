import 'package:dartz/dartz.dart';
import '../repositories/bill_repository.dart';
import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';

class CompareBillsParams {
  final String billId1;
  final String billId2;
  const CompareBillsParams({required this.billId1, required this.billId2});
}

/// Compares two bills and returns a [BillComparison] with Urdu analysis.
class CompareBillsUseCase implements UseCase<BillComparison, CompareBillsParams> {
  final BillRepository repository;
  CompareBillsUseCase(this.repository);

  @override
  Future<Either<Failure, BillComparison>> call(CompareBillsParams params) =>
      repository.compareBills(params.billId1, params.billId2);
}
