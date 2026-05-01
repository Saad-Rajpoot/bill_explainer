import '../../../../domain/entities/bill.dart';

/// DTO from [GeminiBillService]. Fields mirror the 10-box IESCO bill exactly.
class ParsedBill {
  final String discoName;
  final double confidenceScore;
  final List<PaymentHistoryEntry> paymentHistory;

  // ── BOX 1: Connection Info ─────────────────────────────────────────
  final String? connectionDate; // CONNECTION DATE
  final String? connectedLoad;  // CONNECTED LOAD
  final String? edo;            // EDO
  final String? billMonthRaw;   // BILL MONTH
  final String? readingDate;    // READING DATE
  final String? issueDate;      // ISSUE DATE
  final String? dueDateRaw;     // DUE DATE

  // ── BOX 2: Consumer Info ───────────────────────────────────────────
  final String? consumerNumber;   // CONSUMER ID
  final String? tariff;           // TARIFF
  final double? load;             // LOAD
  final String? oldAccountNumber; // OLD A/C NUMBER
  final String? division;         // DIVISION
  final String? subDivision;      // SUB DIVISION
  final String? referenceNumber;  // REFERENCE NO
  final String? lockAge;          // LOCK AGE
  final String? noOfAct;          // NO OF ACT
  final String? unBillAge;        // UN-BILL-AGE
  final String? feederName;       // FEEDER NAME
  final String? iescoGstNo;       // IESCO GST NO

  // ── BOX 3: Name & Address ──────────────────────────────────────────
  final String? name;    // NAME
  final String? sonOf;   // S/O
  final String? plotNo;  // PLOT NO
  final String? stNo;    // ST NO
  final String? block;   // BLOCK
  final String? area;    // AREA

  // ── BOX 5: Meter Reading ───────────────────────────────────────────
  final String? meterNo;        // METER NO
  final int? previousReading;   // PREVIOUS READING
  final int? presentReading;    // PRESENT READING
  final int? mf;                // MF
  final int? unitsConsumed;     // UNITS
  final String? status;         // STATUS

  // ── BOX 6: IESCO Charges ───────────────────────────────────────────
  final String? unitsConsumedB6;      // UNITS CONSUMED (display string)
  final double? costOfElectricity;    // COST OF ELECTRICITY
  final double? meterRentFixCharges;  // METER RENT FIX CHARGES
  final double? serviceRent;          // SERVICE RENT
  final double? fuelPriceAdjustment;  // FUEL PRICE ADJUSTMENT
  final double? fcSurcharge;          // F.C SURCHARGE
  final double? qtrTariffAdj;         // QTR TARIFF ADJ/DMC

  // ── BOX 7: Govt Charges ────────────────────────────────────────────
  final double? electricityDuty;   // ELECTRICITY DUTY
  final double? tvFee;             // TV FEE
  final double? gst;               // GST
  final double? incomeTax;         // INCOME TAX
  final double? extraTax;          // EXTRA TAX
  final double? furtherTax;        // FURTHER TAX
  final double? retailerStax;      // RETAILER STAX
  final double? gstOnFpa;          // GST ON FPA
  final double? edOnFpa;           // ED ON FPA
  final double? furtherTaxOnFpa;   // FURTHER TAX ON FPA
  final double? sTaxOnFpa;         // S.TAX ON FPA
  final double? itOnFpa;           // IT ON FPA
  final double? etOnFpa;           // ET ON FPA
  final double? totalTaxesOnFpa;   // TOTAL TAXES ON FPA

  // ── BOX 8: Total Charges ───────────────────────────────────────────
  final double? arrears;              // ARREAR/AGE
  final double? currentBill;          // CURRENT BILL
  final double? billAdjustment;       // BILL ADJUSTMENT
  final double? installment;          // INSTALLEMENT
  final double? subsidies;            // SUBSIDIES
  final double? totalFpa;             // TOTAL FPA
  final double? totalAmount;          // PAYABLE WITHIN DUE DATE
  final double? lpSurcharge;          // L.P.SURCHARGE
  final String? payableAfterDueDate;  // PAYABLE AFTER DUE DATE

  // ── BOX 9: Bill Calculation ────────────────────────────────────────
  final double? gopTariff;   // GOP TARIFF
  final String? calculation; // CALCULATION (GOP TARIFF x UNITS)

  // ── BOX 10: Contact Info ───────────────────────────────────────────
  final String? textReferenceTo; // TEXT REFERENCE NO TO
  final String? orCall;          // OR CALL
  final String? centerName;      // CENTER NAME
  final String? complaintsDial;  // FOR COMPLAINTS DIAL
  final String? sms;             // SMS

  ParsedBill({
    required this.discoName,
    this.confidenceScore = 0.0,
    this.paymentHistory = const [],
    this.connectionDate, this.connectedLoad, this.edo,
    this.billMonthRaw, this.readingDate, this.issueDate, this.dueDateRaw,
    this.consumerNumber, this.tariff, this.load, this.oldAccountNumber,
    this.division, this.subDivision, this.referenceNumber, this.lockAge,
    this.noOfAct, this.unBillAge, this.feederName, this.iescoGstNo,
    this.name, this.sonOf, this.plotNo, this.stNo, this.block, this.area,
    this.meterNo, this.previousReading, this.presentReading, this.mf,
    this.unitsConsumed, this.status,
    this.unitsConsumedB6, this.costOfElectricity, this.meterRentFixCharges,
    this.serviceRent, this.fuelPriceAdjustment, this.fcSurcharge, this.qtrTariffAdj,
    this.electricityDuty, this.tvFee, this.gst, this.incomeTax, this.extraTax,
    this.furtherTax, this.retailerStax, this.gstOnFpa, this.edOnFpa,
    this.furtherTaxOnFpa, this.sTaxOnFpa, this.itOnFpa, this.etOnFpa,
    this.totalTaxesOnFpa,
    this.arrears, this.currentBill, this.billAdjustment, this.installment,
    this.subsidies, this.totalFpa, this.totalAmount, this.lpSurcharge,
    this.payableAfterDueDate,
    this.gopTariff, this.calculation,
    this.textReferenceTo, this.orCall, this.centerName,
    this.complaintsDial, this.sms,
  });

  bool get hasMinimumData =>
      (consumerNumber != null || referenceNumber != null) &&
      unitsConsumed != null &&
      totalAmount != null;
}
