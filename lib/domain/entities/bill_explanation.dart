import 'package:equatable/equatable.dart';
import 'bill.dart';
import 'bill_charge.dart';

/// Domain entity: full explanation of a scanned bill, ready for display.
class BillExplanation extends Equatable {
  final Bill bill;
  final List<BillCharge> charges;
  final String overallStatusUrdu; // "آپ کا بل درست ہے" or "زیادہ وصول کیا"
  final String? complaintText; // Auto-generated Urdu complaint (if overcharged)
  final String helplineNumber; // Company-specific helpline

  const BillExplanation({
    required this.bill,
    required this.charges,
    required this.overallStatusUrdu,
    this.complaintText,
    required this.helplineNumber,
  });

  bool get isHighBill => bill.isHighBill;
  int get highChargesCount =>
      charges.where((c) => c.isHigh).length;

  @override
  List<Object?> get props => [bill, charges];
}
