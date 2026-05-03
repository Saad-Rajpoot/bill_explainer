import 'package:equatable/equatable.dart';
import '../../core/utils/tariff_calculator.dart';

/// Domain entity: a single charge line on the bill.
class BillCharge extends Equatable {
  final String id; // Unique identifier e.g. 'fc', 'gst', 'ed'
  final String nameKey; // Translation key for name
  final String explanationKey; // Translation key for explanation
  final double amount; // PKR
  final double? expectedAmount; // Computed expected amount (nullable)
  final ChargeStatus status; // normal / high / overcharged

  const BillCharge({
    required this.id,
    required this.nameKey,
    required this.explanationKey,
    required this.amount,
    this.expectedAmount,
    required this.status,
  });

  bool get isHigh => status == ChargeStatus.high;
  bool get isNormal => status == ChargeStatus.normal;

  @override
  List<Object?> get props =>
      [id, amount, expectedAmount, status];
}
