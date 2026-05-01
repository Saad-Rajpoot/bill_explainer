import 'package:dartz/dartz.dart';
import '../entities/bill.dart';

import '../repositories/bill_repository.dart';
import '../../core/errors/failures.dart';
import '../../core/usecases/usecase.dart';


/// Params for ScanBillUseCase
class ScanBillParams {
  final String imagePath;
  const ScanBillParams({required this.imagePath});
}

/// Orchestrates: compress image → OCR → parse → calculate → save.
class ScanBillUseCase implements UseCase<Bill, ScanBillParams> {
  final BillRepository repository;
  ScanBillUseCase(this.repository);

  @override
  Future<Either<Failure, Bill>> call(ScanBillParams params) async {
    return repository.scanBill(params.imagePath);
  }
}
