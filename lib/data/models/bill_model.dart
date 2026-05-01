import 'package:isar/isar.dart';
import '../../domain/entities/bill.dart';
import '../../domain/entities/bill_charge.dart';
import '../../core/utils/tariff_calculator.dart';

part 'bill_model.g.dart';

@collection
class BillModel {
  Id id = Isar.autoIncrement;

  // ── App-Internal ───────────────────────────────────────────────────
  String? supabaseId;
  String? imagePath;
  late DateTime scannedAt;
  late double ocrConfidence;
  late double expectedAmount;
  late bool isOvercharged;
  late double overchargeAmount;
  List<PaymentHistoryModel> paymentHistory = [];

  // ── BOX 1: Connection Info ─────────────────────────────────────────
  @Index()
  late String companyName;
  String? connectionDate;
  String? connectedLoad;
  String? edo;
  @Index()
  late DateTime billMonth;
  String? readingDate;
  String? issueDate;
  late DateTime dueDate;

  // ── BOX 2: Consumer Info ───────────────────────────────────────────
  @Index()
  late String consumerNumber;
  String? referenceNumber;
  String? tariff;
  double? load;
  String? oldAccountNumber;
  String? division;
  String? subDivision;
  String? lockAge;
  String? noOfAct;
  String? unBillAge;
  String? feederName;
  String? companyGstNo;

  // ── BOX 3: Name & Address ──────────────────────────────────────────
  String? name;
  String? sonOf;
  String? plotNo;
  String? stNo;
  String? block;
  String? area;

  // ── BOX 5: Meter Reading ───────────────────────────────────────────
  String? meterNo;
  int? previousReading;
  int? presentReading;
  int? mf;
  late int unitsConsumed;
  String? status;

  // ── BOX 6: Company Charges ────────────────────────────────────────
  double? costOfElectricity;
  double? meterRentFixCharges;
  double? serviceRent;
  double? fuelPriceAdjustment;
  double? fcSurcharge;
  double? qtrTariffAdj;

  // ── BOX 7: Govt Charges ────────────────────────────────────────────
  double? electricityDuty;
  double? tvFee;
  double? gst;
  double? incomeTax;
  double? extraTax;
  double? furtherTax;
  double? retailerStax;
  double? gstOnFpa;
  double? edOnFpa;
  double? furtherTaxOnFpa;
  double? sTaxOnFpa;
  double? itOnFpa;
  double? etOnFpa;
  double? totalTaxesOnFpa;

  // ── BOX 8: Total Charges ───────────────────────────────────────────
  double? arrears;
  double? currentBill;
  double? billAdjustment;
  double? installment;
  double? subsidies;
  double? totalFpa;
  late double totalAmount;
  double? lpSurcharge;
  String? payableAfterDueDate;

  // ── BOX 9: Bill Calculation ────────────────────────────────────────
  double? gopTariff;
  String? calculation;

  // ── BOX 10: Contact Info ───────────────────────────────────────────
  String? textReferenceTo;
  String? orCall;
  String? centerName;
  String? complaintsDial;
  String? sms;

  static BillModel fromEntity(Bill bill) {
    return BillModel()
      ..supabaseId = bill.supabaseId
      ..imagePath = bill.imagePath
      ..scannedAt = bill.scannedAt
      ..ocrConfidence = bill.ocrConfidence
      ..expectedAmount = bill.expectedAmount
      ..isOvercharged = bill.isOvercharged
      ..overchargeAmount = bill.overchargeAmount
      ..paymentHistory = bill.paymentHistory.map((h) => PaymentHistoryModel()
        ..month = h.month
        ..units = h.units
        ..bill = h.bill
        ..payment = h.payment).toList()
      // Box 1
      ..companyName = bill.companyName
      ..connectionDate = bill.connectionDate
      ..connectedLoad = bill.connectedLoad
      ..edo = bill.edo
      ..billMonth = bill.billMonth
      ..readingDate = bill.readingDate
      ..issueDate = bill.issueDate
      ..dueDate = bill.dueDate
      // Box 2
      ..consumerNumber = bill.consumerNumber
      ..referenceNumber = bill.referenceNumber
      ..tariff = bill.tariff
      ..load = bill.load
      ..oldAccountNumber = bill.oldAccountNumber
      ..division = bill.division
      ..subDivision = bill.subDivision
      ..lockAge = bill.lockAge
      ..noOfAct = bill.noOfAct
      ..unBillAge = bill.unBillAge
      ..feederName = bill.feederName
      ..companyGstNo = bill.companyGstNo
      // Box 3
      ..name = bill.name
      ..sonOf = bill.sonOf
      ..plotNo = bill.plotNo
      ..stNo = bill.stNo
      ..block = bill.block
      ..area = bill.area
      // Box 5
      ..meterNo = bill.meterNo
      ..previousReading = bill.previousReading
      ..presentReading = bill.presentReading
      ..mf = bill.mf
      ..unitsConsumed = bill.unitsConsumed
      ..status = bill.status
      // Box 6
      ..costOfElectricity = bill.costOfElectricity
      ..meterRentFixCharges = bill.meterRentFixCharges
      ..serviceRent = bill.serviceRent
      ..fuelPriceAdjustment = bill.fuelPriceAdjustment
      ..fcSurcharge = bill.fcSurcharge
      ..qtrTariffAdj = bill.qtrTariffAdj
      // Box 7
      ..electricityDuty = bill.electricityDuty
      ..tvFee = bill.tvFee
      ..gst = bill.gst
      ..incomeTax = bill.incomeTax
      ..extraTax = bill.extraTax
      ..furtherTax = bill.furtherTax
      ..retailerStax = bill.retailerStax
      ..gstOnFpa = bill.gstOnFpa
      ..edOnFpa = bill.edOnFpa
      ..furtherTaxOnFpa = bill.furtherTaxOnFpa
      ..sTaxOnFpa = bill.sTaxOnFpa
      ..itOnFpa = bill.itOnFpa
      ..etOnFpa = bill.etOnFpa
      ..totalTaxesOnFpa = bill.totalTaxesOnFpa
      // Box 8
      ..arrears = bill.arrears
      ..currentBill = bill.currentBill
      ..billAdjustment = bill.billAdjustment
      ..installment = bill.installment
      ..subsidies = bill.subsidies
      ..totalFpa = bill.totalFpa
      ..totalAmount = bill.totalAmount
      ..lpSurcharge = bill.lpSurcharge
      ..payableAfterDueDate = bill.payableAfterDueDate
      // Box 9
      ..gopTariff = bill.gopTariff
      ..calculation = bill.calculation
      // Box 10
      ..textReferenceTo = bill.textReferenceTo
      ..orCall = bill.orCall
      ..centerName = bill.centerName
      ..complaintsDial = bill.complaintsDial
      ..sms = bill.sms;
  }

  Bill toEntity() {
    return Bill(
      id: id.toString(),
      supabaseId: supabaseId,
      imagePath: imagePath,
      scannedAt: scannedAt,
      ocrConfidence: ocrConfidence,
      charges: _buildCharges(),
      paymentHistory: paymentHistory.map((h) => PaymentHistoryEntry(
        month: h.month ?? '',
        units: h.units ?? '',
        bill: h.bill ?? 0.0,
        payment: h.payment ?? 0.0,
      )).toList(),
      expectedAmount: expectedAmount,
      isOvercharged: isOvercharged,
      overchargeAmount: overchargeAmount,
      companyName: companyName,
      connectionDate: connectionDate,
      connectedLoad: connectedLoad,
      edo: edo,
      billMonth: billMonth,
      readingDate: readingDate,
      issueDate: issueDate,
      dueDate: dueDate,
      consumerNumber: consumerNumber,
      referenceNumber: referenceNumber,
      tariff: tariff,
      load: load,
      oldAccountNumber: oldAccountNumber,
      division: division,
      subDivision: subDivision,
      lockAge: lockAge,
      noOfAct: noOfAct,
      unBillAge: unBillAge,
      feederName: feederName,
      companyGstNo: companyGstNo,
      name: name,
      sonOf: sonOf,
      plotNo: plotNo,
      stNo: stNo,
      block: block,
      area: area,
      meterNo: meterNo,
      previousReading: previousReading,
      presentReading: presentReading,
      mf: mf,
      unitsConsumed: unitsConsumed,
      status: status,
      costOfElectricity: costOfElectricity,
      meterRentFixCharges: meterRentFixCharges,
      serviceRent: serviceRent,
      fuelPriceAdjustment: fuelPriceAdjustment,
      fcSurcharge: fcSurcharge,
      qtrTariffAdj: qtrTariffAdj,
      electricityDuty: electricityDuty,
      tvFee: tvFee,
      gst: gst,
      incomeTax: incomeTax,
      extraTax: extraTax,
      furtherTax: furtherTax,
      retailerStax: retailerStax,
      gstOnFpa: gstOnFpa,
      edOnFpa: edOnFpa,
      furtherTaxOnFpa: furtherTaxOnFpa,
      sTaxOnFpa: sTaxOnFpa,
      itOnFpa: itOnFpa,
      etOnFpa: etOnFpa,
      totalTaxesOnFpa: totalTaxesOnFpa,
      arrears: arrears,
      currentBill: currentBill,
      billAdjustment: billAdjustment,
      installment: installment,
      subsidies: subsidies,
      totalFpa: totalFpa,
      totalAmount: totalAmount,
      lpSurcharge: lpSurcharge,
      payableAfterDueDate: payableAfterDueDate,
      gopTariff: gopTariff,
      calculation: calculation,
      textReferenceTo: textReferenceTo,
      orCall: orCall,
      centerName: centerName,
      complaintsDial: complaintsDial,
      sms: sms,
    );
  }

  List<BillCharge> _buildCharges() {
    return [
      if ((costOfElectricity ?? 0) > 0)
        _charge('cost_of_electricity', costOfElectricity!),
      if ((meterRentFixCharges ?? 0) > 0)
        _charge('meter_rent_fix_charges', meterRentFixCharges!),
      if ((fuelPriceAdjustment ?? 0) > 0)
        _charge('fuel_price_adjustment', fuelPriceAdjustment!),
      if ((fcSurcharge ?? 0) > 0)
        _charge('fc_surcharge', fcSurcharge!),
      if ((qtrTariffAdj ?? 0) > 0)
        _charge('qtr_tariff_adj', qtrTariffAdj!),
      if ((electricityDuty ?? 0) > 0)
        _charge('electricity_duty', electricityDuty!),
      if ((gst ?? 0) > 0)
        _charge('gst', gst!),
      if ((tvFee ?? 0) > 0)
        _charge('tv_fee', tvFee!),
    ];
  }

  BillCharge _charge(String chargeId, double amount) {
    return BillCharge(
      id: chargeId,
      nameKey: 'label_$chargeId',
      explanationKey: 'explain_$chargeId',
      amount: amount,
      status: ChargeStatus.normal,
    );
  }
}

@embedded
class PaymentHistoryModel {
  String? month;
  String? units;
  double? bill;
  double? payment;
}
