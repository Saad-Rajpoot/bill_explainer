import 'package:equatable/equatable.dart';
import 'bill.dart';
import 'bill_charge.dart';

/// Domain entity: full explanation of a scanned bill, ready for display.
class BillExplanation extends Equatable {
  final Bill bill;
  final List<BillCharge> charges;
  final String overallStatusUrdu; // "آپ کا بل درست ہے" or "زیادہ وصول کیا"
  final String? complaintText; // Auto-generated Urdu complaint (if overcharged)
  final String helplineNumber; // DISCO-specific helpline

  const BillExplanation({
    required this.bill,
    required this.charges,
    required this.overallStatusUrdu,
    this.complaintText,
    required this.helplineNumber,
  });

  bool get isOvercharged => bill.isOvercharged;
  int get overchargedChargesCount =>
      charges.where((c) => c.isOvercharged).length;

  @override
  List<Object?> get props => [bill, charges];
}
