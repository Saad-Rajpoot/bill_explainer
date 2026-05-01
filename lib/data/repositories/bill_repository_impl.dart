import 'dart:io';
import 'package:dartz/dartz.dart';
import '../../domain/entities/bill.dart';
import '../../domain/entities/bill_charge.dart';
import '../../domain/repositories/bill_repository.dart';
import '../../core/errors/failures.dart';
import '../../core/errors/exceptions.dart';
import '../../core/network/network_info.dart';
import '../../core/utils/tariff_calculator.dart';
import '../datasources/local/bill_local_datasource.dart';
import '../datasources/remote/supabase_datasource.dart';
import '../models/bill_model.dart';
import '../../features/bill_scan/data/parsers/bill_parser.dart';
import '../../features/bill_scan/data/services/hybrid_bill_extractor.dart';

/// Concrete implementation of [BillRepository].
/// Follows offline-first: Isar is source of truth; Supabase is optional sync.
class BillRepositoryImpl implements BillRepository {
  final BillLocalDatasource localDatasource;
  final SupabaseDatasource remoteDatasource;
  final NetworkInfo networkInfo;
  final HybridBillExtractor hybridExtractor;

  BillRepositoryImpl({
    required this.localDatasource,
    required this.remoteDatasource,
    required this.networkInfo,
    required this.hybridExtractor,
  });

  // ─── Scan ────────────────────────────────────────────────────────

  @override
  Future<Either<Failure, Bill>> scanBill(String imagePath) async {
    try {
      // 1. Parse via Gemini AI (Local OCR removed)
      final imageFile = File(imagePath);
      final parsed = await hybridExtractor.extractBill(imageFile);

      if (parsed == null || (!parsed.hasMinimumData && parsed.unitsConsumed == null)) {
        return const Left(InvalidBillFailure());
      }

      // 3. Calculate expected amount
      final fcPerUnit = parsed.fuelPriceAdjustment != null && parsed.unitsConsumed != null
          ? (parsed.fuelPriceAdjustment! / parsed.unitsConsumed!)
          : 0.0;
      final qtaPerUnit = parsed.qtrTariffAdj != null && parsed.unitsConsumed != null
          ? (parsed.qtrTariffAdj! / parsed.unitsConsumed!)
          : 0.0;

      final tariff = TariffCalculator.calculate(
        units: parsed.unitsConsumed ?? 0,
        discoName: parsed.discoName,
        fcAdjustmentPerUnit: fcPerUnit,
        qtaPerUnit: qtaPerUnit,
      );

      // 4. Validate
      final validation = TariffCalculator.validateBill(
        units: parsed.unitsConsumed ?? 0,
        billedAmount: parsed.totalAmount ?? 0.0,
        discoName: parsed.discoName,
        fcAdjustmentPerUnit: fcPerUnit,
        qtaPerUnit: qtaPerUnit,
      );

      // 5. Parse dates from raw strings
      final billMonth = _parseMonthYear(parsed.billMonthRaw) ?? DateTime.now();
      final dueDate = _parseDayMonthYear(parsed.dueDateRaw) ??
          DateTime.now().add(const Duration(days: 7));

      // 6. Build Bill entity
      final bill = Bill(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        scannedAt: DateTime.now(),
        ocrConfidence: parsed.confidenceScore,
        charges: _buildChargesFromParsed(parsed, tariff),
        paymentHistory: parsed.paymentHistory,
        expectedAmount: tariff.grandTotal,
        isOvercharged: validation.isOvercharged,
        overchargeAmount: validation.difference.clamp(0, double.infinity),
        imagePath: imagePath,
        // Box 1
        discoName: parsed.discoName,
        connectionDate: parsed.connectionDate,
        connectedLoad: parsed.connectedLoad,
        edo: parsed.edo,
        billMonth: billMonth,
        readingDate: parsed.readingDate,
        issueDate: parsed.issueDate,
        dueDate: dueDate,
        // Box 2
        consumerNumber: parsed.consumerNumber ?? 'نامعلوم',
        referenceNumber: parsed.referenceNumber,
        tariff: parsed.tariff,
        load: parsed.load,
        oldAccountNumber: parsed.oldAccountNumber,
        division: parsed.division,
        subDivision: parsed.subDivision,
        lockAge: parsed.lockAge,
        noOfAct: parsed.noOfAct,
        unBillAge: parsed.unBillAge,
        feederName: parsed.feederName,
        iescoGstNo: parsed.iescoGstNo,
        // Box 3
        name: parsed.name,
        sonOf: parsed.sonOf,
        plotNo: parsed.plotNo,
        stNo: parsed.stNo,
        block: parsed.block,
        area: parsed.area,
        // Box 5
        meterNo: parsed.meterNo,
        previousReading: parsed.previousReading,
        presentReading: parsed.presentReading,
        mf: parsed.mf,
        unitsConsumed: parsed.unitsConsumed ?? 0,
        status: parsed.status,
        // Box 6
        costOfElectricity: parsed.costOfElectricity,
        meterRentFixCharges: parsed.meterRentFixCharges,
        serviceRent: parsed.serviceRent,
        fuelPriceAdjustment: parsed.fuelPriceAdjustment,
        fcSurcharge: parsed.fcSurcharge,
        qtrTariffAdj: parsed.qtrTariffAdj,
        // Box 7
        electricityDuty: parsed.electricityDuty,
        tvFee: parsed.tvFee,
        gst: parsed.gst,
        incomeTax: parsed.incomeTax,
        extraTax: parsed.extraTax,
        furtherTax: parsed.furtherTax,
        retailerStax: parsed.retailerStax,
        gstOnFpa: parsed.gstOnFpa,
        edOnFpa: parsed.edOnFpa,
        furtherTaxOnFpa: parsed.furtherTaxOnFpa,
        sTaxOnFpa: parsed.sTaxOnFpa,
        itOnFpa: parsed.itOnFpa,
        etOnFpa: parsed.etOnFpa,
        totalTaxesOnFpa: parsed.totalTaxesOnFpa,
        // Box 8
        arrears: parsed.arrears,
        currentBill: parsed.currentBill,
        billAdjustment: parsed.billAdjustment,
        installment: parsed.installment,
        subsidies: parsed.subsidies,
        totalFpa: parsed.totalFpa,
        totalAmount: parsed.totalAmount ?? 0.0,
        lpSurcharge: parsed.lpSurcharge,
        payableAfterDueDate: parsed.payableAfterDueDate,
        // Box 9
        gopTariff: parsed.gopTariff,
        calculation: parsed.calculation,
        // Box 10
        textReferenceTo: parsed.textReferenceTo,
        orCall: parsed.orCall,
        centerName: parsed.centerName,
        complaintsDial: parsed.complaintsDial,
        sms: parsed.sms,
      );

      // 7. Persist locally
      final model = BillModel.fromEntity(bill);
      final savedId = await localDatasource.saveBill(model);

      // Return bill with actual Isar ID
      final savedBill = Bill(
        id: savedId.toString(),
        scannedAt: bill.scannedAt,
        ocrConfidence: bill.ocrConfidence,
        charges: bill.charges,
        paymentHistory: bill.paymentHistory,
        expectedAmount: bill.expectedAmount,
        isOvercharged: bill.isOvercharged,
        overchargeAmount: bill.overchargeAmount,
        imagePath: bill.imagePath,
        discoName: bill.discoName,
        connectionDate: bill.connectionDate,
        connectedLoad: bill.connectedLoad,
        edo: bill.edo,
        billMonth: bill.billMonth,
        readingDate: bill.readingDate,
        issueDate: bill.issueDate,
        dueDate: bill.dueDate,
        consumerNumber: bill.consumerNumber,
        referenceNumber: bill.referenceNumber,
        tariff: bill.tariff,
        load: bill.load,
        oldAccountNumber: bill.oldAccountNumber,
        division: bill.division,
        subDivision: bill.subDivision,
        lockAge: bill.lockAge,
        noOfAct: bill.noOfAct,
        unBillAge: bill.unBillAge,
        feederName: bill.feederName,
        iescoGstNo: bill.iescoGstNo,
        name: bill.name,
        sonOf: bill.sonOf,
        plotNo: bill.plotNo,
        stNo: bill.stNo,
        block: bill.block,
        area: bill.area,
        meterNo: bill.meterNo,
        previousReading: bill.previousReading,
        presentReading: bill.presentReading,
        mf: bill.mf,
        unitsConsumed: bill.unitsConsumed,
        status: bill.status,
        costOfElectricity: bill.costOfElectricity,
        meterRentFixCharges: bill.meterRentFixCharges,
        serviceRent: bill.serviceRent,
        fuelPriceAdjustment: bill.fuelPriceAdjustment,
        fcSurcharge: bill.fcSurcharge,
        qtrTariffAdj: bill.qtrTariffAdj,
        electricityDuty: bill.electricityDuty,
        tvFee: bill.tvFee,
        gst: bill.gst,
        incomeTax: bill.incomeTax,
        extraTax: bill.extraTax,
        furtherTax: bill.furtherTax,
        retailerStax: bill.retailerStax,
        gstOnFpa: bill.gstOnFpa,
        edOnFpa: bill.edOnFpa,
        furtherTaxOnFpa: bill.furtherTaxOnFpa,
        sTaxOnFpa: bill.sTaxOnFpa,
        itOnFpa: bill.itOnFpa,
        etOnFpa: bill.etOnFpa,
        totalTaxesOnFpa: bill.totalTaxesOnFpa,
        arrears: bill.arrears,
        currentBill: bill.currentBill,
        billAdjustment: bill.billAdjustment,
        installment: bill.installment,
        subsidies: bill.subsidies,
        totalFpa: bill.totalFpa,
        totalAmount: bill.totalAmount,
        lpSurcharge: bill.lpSurcharge,
        payableAfterDueDate: bill.payableAfterDueDate,
        gopTariff: bill.gopTariff,
        calculation: bill.calculation,
        textReferenceTo: bill.textReferenceTo,
        orCall: bill.orCall,
        centerName: bill.centerName,
        complaintsDial: bill.complaintsDial,
        sms: bill.sms,
      );



      // 7. Attempt background cloud sync (fire-and-forget)
      _syncToCloudIfConnected(model);

      return Right(savedBill);
    } on OcrException catch (e) {
      return Left(OcrFailure(message: e.message));
    } on BillParsingException catch (e) {
      return Left(BillParsingFailure(message: e.message));
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } catch (e) {
      return Left(UnexpectedFailure());
    }
  }

  // ─── CRUD ────────────────────────────────────────────────────────

  @override
  Future<Either<Failure, List<Bill>>> getBillHistory() async {
    try {
      final models = await localDatasource.getAllBills();
      return Right(models.map((m) => m.toEntity()).toList());
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } catch (e) {
      return const Left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, Bill>> getBillById(String id) async {
    try {
      final model = await localDatasource.getBillById(int.parse(id));
      if (model == null) {
        return const Left(CacheFailure(message: 'بل نہیں ملا'));
      }
      return Right(model.toEntity());
    } catch (e) {
      return const Left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, void>> saveBill(Bill bill) async {
    try {
      final model = BillModel.fromEntity(bill);
      await localDatasource.saveBill(model);
      return const Right(null);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } catch (e) {
      return const Left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteBill(String id) async {
    try {
      await localDatasource.deleteBill(int.parse(id));
      return const Right(null);
    } catch (e) {
      return const Left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, void>> syncBillsToCloud() async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) return const Right(null); // Silently skip offline

    try {
      final unsynced = await localDatasource.getUnsyncedBills();
      for (final model in unsynced) {
        final payload = {
          'consumer_number': model.consumerNumber,
          'disco_name': model.discoName,
          'bill_month': model.billMonth.toIso8601String(),
          'units_consumed': model.unitsConsumed,
          'total_amount': model.totalAmount,
          'is_overcharged': model.isOvercharged,
        };
        final supabaseId = await remoteDatasource.syncBill(payload);
        await localDatasource.markAsSynced(model.id, supabaseId);
      }
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return const Left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, BillComparison>> compareBills(
    String billId1,
    String billId2,
  ) async {
    try {
      final m1 = await localDatasource.getBillById(int.parse(billId1));
      final m2 = await localDatasource.getBillById(int.parse(billId2));
      if (m1 == null || m2 == null) {
        return const Left(CacheFailure(message: 'بل نہیں ملا'));
      }
      final b1 = m1.toEntity();
      final b2 = m2.toEntity();

      final unitsDiff = b2.unitsConsumed - b1.unitsConsumed;
      final amountDiff = b2.totalAmount - b1.totalAmount;

      final analysisUrdu =
          _buildComparisonAnalysis(b1, b2, unitsDiff, amountDiff);

      return Right(BillComparison(
        bill1: b1,
        bill2: b2,
        unitsDiff: unitsDiff,
        amountDiff: amountDiff,
        analysisUrdu: analysisUrdu,
      ));
    } catch (e) {
      return const Left(UnexpectedFailure());
    }
  }

  // ─── Helpers ─────────────────────────────────────────────────────

  List<BillCharge> _buildChargesFromParsed(
      ParsedBill parsed, TariffResult tariff) {
    return [
      if (parsed.costOfElectricity != null)
        _makeCharge('cost_of_electricity', parsed.costOfElectricity!,
            'بجلی کی قیمت', 'آپ کے استعمال کردہ یونٹس کی اصل قیمت۔', tariff.energyCharges),
      if (parsed.meterRentFixCharges != null)
        _makeCharge('meter_rent_fix_charges', parsed.meterRentFixCharges!,
            'میٹر رینٹ/فکس چارجز', 'میٹر کا بنیادی ماہانہ کرایہ۔', tariff.fixedCharges),
      if (parsed.fuelPriceAdjustment != null)
        _makeCharge('fuel_price_adjustment', parsed.fuelPriceAdjustment!,
            'فیول ایڈجسٹمنٹ (FPA)', 'ایندھن کی قیمت میں تبدیلی کی وجہ سے شامل رقم۔', tariff.fcAdjustment),
      if (parsed.qtrTariffAdj != null)
        _makeCharge('qtr_tariff_adj', parsed.qtrTariffAdj!,
            'سہ ماہی ایڈجسٹمنٹ (QTA)', 'بجلی کی پیداواری لاگت کو بیلنس کرنے کے لیے چارجز۔', tariff.qtaCharge),
      if (parsed.electricityDuty != null)
        _makeCharge(
          'ed',
          parsed.electricityDuty!,
          'الیکٹرسٹی ڈیوٹی',
          'حکومت کی طرف سے بجلی کے استعمال پر ٹیکس۔',
          tariff.electricityDuty,
        ),
      if (parsed.gst != null)
        _makeCharge(
          'gst',
          parsed.gst!,
          'جی ایس ٹی (GST)',
          'وفاقی حکومت کا سیلز ٹیکس (18%)۔',
          tariff.gst,
        ),
      if (parsed.tvFee != null)
        _makeCharge(
          'tv',
          parsed.tvFee!,
          'ٹی وی فیس',
          'پی ٹی وی کا ماہانہ لائسنس چارج۔',
          tariff.tvFee,
        ),

      if (parsed.arrears != null && parsed.arrears! > 0)
        _makeCharge(
          'arrears',
          parsed.arrears!,
          'بقایا جات (Arrears)',
          'پچھلے مہینوں کی غیر ادا شدہ رقم۔',
          parsed.arrears!,
        ),
      if (parsed.lpSurcharge != null && parsed.lpSurcharge! > 0)
        _makeCharge(
          'lp',
          parsed.lpSurcharge!,
          'لیٹ پیمنٹ سرچارج',
          'تاریخ گزرنے کے بعد ادائیگی پر جرمانہ۔',
          parsed.lpSurcharge!,
        ),
      if (parsed.gstOnFpa != null && parsed.gstOnFpa! > 0)
        _makeCharge(
          'gst_fpa',
          parsed.gstOnFpa!,
          'ایف پی اے پر جی ایس ٹی',
          'فیول ایڈجسٹمنٹ کی رقم پر لگنے والا سیلز ٹیکس۔',
          parsed.gstOnFpa!,
        ),
      if (parsed.edOnFpa != null && parsed.edOnFpa! > 0)
        _makeCharge(
          'ed_fpa',
          parsed.edOnFpa!,
          'ایف پی اے پر ای ڈی',
          'فیول ایڈجسٹمنٹ کی رقم پر لگنے والی الیکٹرسٹی ڈیوٹی۔',
          parsed.edOnFpa!,
        ),
    ];
  }

  BillCharge _makeCharge(String id, double amount, String name, String explanation, double expected) {
    final status = (amount - expected).abs() > (expected * 0.05)
        ? (amount > expected ? ChargeStatus.overcharged : ChargeStatus.normal)
        : ChargeStatus.normal;

    return BillCharge(
      id: id,
      nameUrdu: name,
      explanationUrdu: explanation,
      amount: amount,
      expectedAmount: expected,
      status: status,
    );
  }

  /// Parse "MAR 23" → DateTime
  DateTime? _parseMonthYear(String? raw) {
    if (raw == null || raw.isEmpty) return null;
    const months = {
      'JAN': 1, 'FEB': 2, 'MAR': 3, 'APR': 4, 'MAY': 5, 'JUN': 6,
      'JUL': 7, 'AUG': 8, 'SEP': 9, 'OCT': 10, 'NOV': 11, 'DEC': 12,
    };
    final parts = raw.trim().toUpperCase().split(RegExp(r'[\s/-]+'));
    if (parts.length < 2) return null;
    final month = months[parts[0]];
    final yearStr = parts[1].length == 2 ? '20${parts[1]}' : parts[1];
    final year = int.tryParse(yearStr);
    if (month == null || year == null) return null;
    return DateTime(year, month);
  }

  /// Parse "13 APR 23" → DateTime
  DateTime? _parseDayMonthYear(String? raw) {
    if (raw == null || raw.isEmpty) return null;
    const months = {
      'JAN': 1, 'FEB': 2, 'MAR': 3, 'APR': 4, 'MAY': 5, 'JUN': 6,
      'JUL': 7, 'AUG': 8, 'SEP': 9, 'OCT': 10, 'NOV': 11, 'DEC': 12,
    };
    final parts = raw.trim().toUpperCase().split(RegExp(r'[\s/-]+'));
    if (parts.length < 3) return null;
    final day = int.tryParse(parts[0]);
    final month = months[parts[1]];
    final yearStr = parts[2].length == 2 ? '20${parts[2]}' : parts[2];
    final year = int.tryParse(yearStr);
    if (day == null || month == null || year == null) return null;
    return DateTime(year, month, day);
  }

  String _buildComparisonAnalysis(
      Bill b1, Bill b2, int unitsDiff, double amountDiff) {
    if (unitsDiff > 0) {
      return 'دوسرے بل میں $unitsDiff یونٹ زیادہ ہیں جس سے '
          '₨${amountDiff.abs().toStringAsFixed(0)} زیادہ ادا کرنا پڑا۔';
    } else if (unitsDiff < 0) {
      return 'دوسرے بل میں ${unitsDiff.abs()} یونٹ کم ہیں — '
          '₨${amountDiff.abs().toStringAsFixed(0)} کی بچت ہوئی۔';
    }
    return 'دونوں بلوں میں یونٹ برابر ہیں۔';
  }

  void _syncToCloudIfConnected(BillModel model) {
    // Fire-and-forget — never blocks the scan flow
    Future.microtask(() async {
      final isConnected = await networkInfo.isConnected;
      if (!isConnected || !remoteDatasource.isAuthenticated) return;
      try {
        final payload = {
          'consumer_number': model.consumerNumber,
          'disco_name': model.discoName,
          'bill_month': model.billMonth.toIso8601String(),
          'units_consumed': model.unitsConsumed,
          'total_amount': model.totalAmount,
          'is_overcharged': model.isOvercharged,
        };
        final id = await remoteDatasource.syncBill(payload);
        await localDatasource.markAsSynced(model.id, id);
      } catch (_) {
        // Best-effort — will retry on next syncBillsToCloud call
      }
    });
  }
}
