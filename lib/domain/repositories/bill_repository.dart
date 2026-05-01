import 'package:dartz/dartz.dart';
import '../entities/bill.dart';
import '../../core/errors/failures.dart';

/// Bill repository contract — domain layer only defines the interface.
/// Implementation lives in data/repositories/.
abstract class BillRepository {
  /// Scan a bill image (path) and return a parsed [Bill].
  Future<Either<Failure, Bill>> scanBill(String imagePath);

  /// Get all bills from local Isar DB, sorted by scannedAt desc.
  Future<Either<Failure, List<Bill>>> getBillHistory();

  /// Get a single bill by its local Isar ID.
  Future<Either<Failure, Bill>> getBillById(String id);

  /// Save a bill to local Isar DB.
  Future<Either<Failure, void>> saveBill(Bill bill);

  /// Delete a bill from local Isar DB.
  Future<Either<Failure, void>> deleteBill(String id);

  /// Sync unsynced bills to Supabase (best-effort, no failure if offline).
  Future<Either<Failure, void>> syncBillsToCloud();

  /// Compare two bills side by side.
  Future<Either<Failure, BillComparison>> compareBills(
    String billId1,
    String billId2,
  );
}

/// Comparison result between two bills.
class BillComparison {
  final Bill bill1;
  final Bill bill2;
  final int unitsDiff; // positive = bill2 has more units
  final double amountDiff; // positive = bill2 cost more
  final String analysisUrdu; // Plain Urdu explanation of differences

  const BillComparison({
    required this.bill1,
    required this.bill2,
    required this.unitsDiff,
    required this.amountDiff,
    required this.analysisUrdu,
  });
}
