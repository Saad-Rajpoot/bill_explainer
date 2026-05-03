import 'package:equatable/equatable.dart';
import 'bill_charge.dart';

class PaymentHistoryEntry extends Equatable {
  final String month;
  final String units;
  final double bill;
  final double payment;

  const PaymentHistoryEntry({
    required this.month,
    required this.units,
    required this.bill,
    required this.payment,
  });

  @override
  List<Object?> get props => [month, units, bill, payment];
}

/// Domain entity for a generic electricity bill.
/// Fields are organized by a standardized 10-box layout.
class Bill extends Equatable {
  // ── App-Internal ───────────────────────────────────────────────────
  final String id;
  final String? supabaseId;
  final String? imagePath;
  final DateTime scannedAt;
  final double ocrConfidence;
  final List<BillCharge> charges;
  final List<PaymentHistoryEntry> paymentHistory;
  final double expectedAmount;
  final bool isHighBill;
  final double differenceAmount;

  // ── BOX 1: Connection Info ─────────────────────────────────────────
  final String companyName;
  final String? connectionDate;
  final String? connectedLoad;
  final String? edo;
  final DateTime billMonth;
  final String? readingDate;
  final String? issueDate;
  final DateTime dueDate;

  // ── BOX 2: Consumer Info ───────────────────────────────────────────
  final String consumerNumber;
  final String? referenceNumber;
  final String? tariff;
  final double? load;
  final String? oldAccountNumber;
  final String? division;
  final String? subDivision;
  final String? lockAge;
  final String? noOfAct;
  final String? unBillAge;
  final String? feederName;
  final String? companyGstNo;

  // ── BOX 3: Name & Address ──────────────────────────────────────────
  final String? name;
  final String? sonOf;
  final String? plotNo;
  final String? stNo;
  final String? block;
  final String? area;

  // ── BOX 5: Meter Reading ───────────────────────────────────────────
  final String? meterNo;
  final int? previousReading;
  final int? presentReading;
  final int? mf;
  final int unitsConsumed;
  final String? status;

  // ── BOX 6: Company Charges ────────────────────────────────────────
  final double? costOfElectricity;
  final double? meterRentFixCharges;
  final double? serviceRent;
  final double? fuelPriceAdjustment;
  final double? fcSurcharge;
  final double? qtrTariffAdj;

  // ── BOX 7: Govt Charges ────────────────────────────────────────────
  final double? electricityDuty;
  final double? tvFee;
  final double? gst;
  final double? incomeTax;
  final double? extraTax;
  final double? furtherTax;
  final double? retailerStax;
  final double? gstOnFpa;
  final double? edOnFpa;
  final double? furtherTaxOnFpa;
  final double? sTaxOnFpa;
  final double? itOnFpa;
  final double? etOnFpa;
  final double? totalTaxesOnFpa;

  // ── BOX 8: Total Charges ───────────────────────────────────────────
  final double? arrears;
  final double? currentBill;
  final double? billAdjustment;
  final double? installment;
  final double? subsidies;
  final double? totalFpa;
  final double totalAmount;
  final double? lpSurcharge;
  final String? payableAfterDueDate;

  // ── BOX 9: Bill Calculation ────────────────────────────────────────
  final double? gopTariff;
  final String? calculation;

  // ── BOX 10: Contact Info ───────────────────────────────────────────
  final String? textReferenceTo;
  final String? orCall;
  final String? centerName;
  final String? complaintsDial;
  final String? sms;

  const Bill({
    required this.id,
    this.supabaseId,
    this.imagePath,
    required this.scannedAt,
    required this.ocrConfidence,
    required this.charges,
    required this.paymentHistory,
    required this.expectedAmount,
    required this.isHighBill,
    required this.differenceAmount,
    // Box 1
    required this.companyName,
    this.connectionDate,
    this.connectedLoad,
    this.edo,
    required this.billMonth,
    this.readingDate,
    this.issueDate,
    required this.dueDate,
    // Box 2
    required this.consumerNumber,
    this.referenceNumber,
    this.tariff,
    this.load,
    this.oldAccountNumber,
    this.division,
    this.subDivision,
    this.lockAge,
    this.noOfAct,
    this.unBillAge,
    this.feederName,
    this.companyGstNo,
    // Box 3
    this.name,
    this.sonOf,
    this.plotNo,
    this.stNo,
    this.block,
    this.area,
    // Box 5
    this.meterNo,
    this.previousReading,
    this.presentReading,
    this.mf,
    required this.unitsConsumed,
    this.status,
    // Box 6
    this.costOfElectricity,
    this.meterRentFixCharges,
    this.serviceRent,
    this.fuelPriceAdjustment,
    this.fcSurcharge,
    this.qtrTariffAdj,
    // Box 7
    this.electricityDuty,
    this.tvFee,
    this.gst,
    this.incomeTax,
    this.extraTax,
    this.furtherTax,
    this.retailerStax,
    this.gstOnFpa,
    this.edOnFpa,
    this.furtherTaxOnFpa,
    this.sTaxOnFpa,
    this.itOnFpa,
    this.etOnFpa,
    this.totalTaxesOnFpa,
    // Box 8
    this.arrears,
    this.currentBill,
    this.billAdjustment,
    this.installment,
    this.subsidies,
    this.totalFpa,
    required this.totalAmount,
    this.lpSurcharge,
    this.payableAfterDueDate,
    // Box 9
    this.gopTariff,
    this.calculation,
    // Box 10
    this.textReferenceTo,
    this.orCall,
    this.centerName,
    this.complaintsDial,
    this.sms,
  });

  bool get isPastDue => DateTime.now().isAfter(dueDate);

  double get totalCompanyCharges =>
      (costOfElectricity ?? 0) +
      (meterRentFixCharges ?? 0) +
      (serviceRent ?? 0) +
      (fuelPriceAdjustment ?? 0) +
      (fcSurcharge ?? 0) +
      (qtrTariffAdj ?? 0);

  double get totalGovtCharges =>
      (electricityDuty ?? 0) +
      (tvFee ?? 0) +
      (gst ?? 0) +
      (incomeTax ?? 0) +
      (gstOnFpa ?? 0) +
      (edOnFpa ?? 0) +
      (totalTaxesOnFpa ?? 0);

  @override
  List<Object?> get props => [
    id, consumerNumber, companyName, scannedAt, billMonth, totalAmount, unitsConsumed,
  ];
}
