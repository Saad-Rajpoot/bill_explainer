import '../constants/wapda_tariffs.dart';

/// Result of a tariff calculation.
class TariffResult {
  final int units;
  final String discoName;
  final double energyCharges;
  final double fixedCharges;
  final double fcAdjustment;
  final double qtaCharge;
  final double electricityDuty;
  final double gst;
  final double tvFee;
  final double njSurcharge;
  final double tds;
  final double totalBeforeTax;
  final double grandTotal;
  final TariffSlab appliedSlab;
  final bool isProtectedConsumer;

  const TariffResult({
    required this.units,
    required this.discoName,
    required this.energyCharges,
    required this.fixedCharges,
    required this.fcAdjustment,
    required this.qtaCharge,
    required this.electricityDuty,
    required this.gst,
    required this.tvFee,
    required this.njSurcharge,
    required this.tds,
    required this.totalBeforeTax,
    required this.grandTotal,
    required this.appliedSlab,
    required this.isProtectedConsumer,
  });
}

/// Core tariff calculation engine.
///
/// Implements NEPRA's slab-based billing system for all 8 DISCOs.
/// Key invariant: calculations must match the DISCO's printed bill within ±2%.
class TariffCalculator {
  TariffCalculator._();

  /// Calculates the expected bill for given units and DISCO.
  ///
  /// [units] — kWh consumed this month
  /// [discoName] — one of [WapdaTariffs.allDiscos]
  /// [fcAdjustmentPerUnit] — Fuel Cost Adjustment for this billing period (PKR/unit)
  /// [qtaPerUnit] — Quarterly Tariff Adjustment (can be negative = credit)
  /// [isFiler] — Tax filer status for TDS calculation
  static TariffResult calculate({
    required int units,
    required String discoName,
    double fcAdjustmentPerUnit = 0.0,
    double qtaPerUnit = 0.0,
    bool isFiler = true,
  }) {
    // 1. Determine slab
    final bool isProtected = units <= 50;
    final TariffSlab slab = _getApplicableSlab(units, isProtected);

    // 2. Calculate energy charges (PKR) — slab-based, telescopic for slabs above 200
    final double energyCharges = _calculateEnergyCharges(units, isProtected);

    // 3. Fixed monthly charges
    final double fixedCharges = _getFixedCharges(units, isProtected);

    // 4. FC Adjustment
    final double fcAdjustment = fcAdjustmentPerUnit * units;

    // 5. QTA
    final double qtaCharge = qtaPerUnit * units;

    // 6. Neelum Jhelum Surcharge
    final double njSurcharge = WapdaTariffs.njSurchargePerUnit * units;

    // 7. Sub-total before duty & tax
    final double subtotal =
        energyCharges + fixedCharges + fcAdjustment + qtaCharge + njSurcharge;

    // 8. Electricity Duty (1.5% of subtotal)
    final double electricityDuty = subtotal * WapdaTariffs.electricityDutyRate;

    // 9. TV Fee (flat per month)
    final double tvFee = WapdaTariffs.tvFee;

    // 10. Total before GST
    final double totalBeforeTax = subtotal + electricityDuty + tvFee;

    // 11. GST (18% on totalBeforeTax)
    final double gst = totalBeforeTax * WapdaTariffs.gstRate;

    // 12. Grand total before TDS
    final double grandTotalBeforeTds = totalBeforeTax + gst;

    // 13. TDS (Withholding Tax)
    final double tds = grandTotalBeforeTds *
        (isFiler
            ? WapdaTariffs.tdsRateFiler
            : WapdaTariffs.tdsRateNonFiler);

    // 14. Grand Total
    final double grandTotal = grandTotalBeforeTds + tds;

    return TariffResult(
      units: units,
      discoName: discoName,
      energyCharges: energyCharges,
      fixedCharges: fixedCharges,
      fcAdjustment: fcAdjustment,
      qtaCharge: qtaCharge,
      electricityDuty: electricityDuty,
      gst: gst,
      tvFee: tvFee,
      njSurcharge: njSurcharge,
      tds: tds,
      totalBeforeTax: totalBeforeTax,
      grandTotal: grandTotal,
      appliedSlab: slab,
      isProtectedConsumer: isProtected,
    );
  }

  /// Validates whether a billed amount is reasonable for given units.
  ///
  /// Returns [OverchargeResult] with details.
  static OverchargeResult validateBill({
    required int units,
    required double billedAmount,
    required String discoName,
    double fcAdjustmentPerUnit = 0.0,
    double qtaPerUnit = 0.0,
    bool isFiler = true,
  }) {
    final result = calculate(
      units: units,
      discoName: discoName,
      fcAdjustmentPerUnit: fcAdjustmentPerUnit,
      qtaPerUnit: qtaPerUnit,
      isFiler: isFiler,
    );

    final double expected = result.grandTotal;
    final double diff = billedAmount - expected;
    // Allow ±5% tolerance for rounding / adjustments
    final double toleranceAmount = expected * 0.05;

    final ChargeStatus status;
    if (diff <= toleranceAmount) {
      status = ChargeStatus.normal;
    } else if (diff <= expected * 0.15) {
      status = ChargeStatus.high;
    } else {
      status = ChargeStatus.overcharged;
    }

    return OverchargeResult(
      expectedAmount: expected,
      billedAmount: billedAmount,
      difference: diff,
      status: status,
      tariffResult: result,
    );
  }

  // ─── Internal helpers ─────────────────────────────────────────────

  /// NEPRA uses a progressive/telescopic slab system.
  /// Each slab's rate applies only to units within that slab.
  static double _calculateEnergyCharges(int units, bool isProtected) {
    if (isProtected) {
      // Protected consumers: flat rate on all units
      return units * WapdaTariffs.residentialSlabs[0].ratePerUnit;
    }

    // Non-protected: telescopic calculation
    // Slab index 1 onwards (skip index 0 which is protected)
    final slabs = WapdaTariffs.residentialSlabs.skip(1).toList();
    double total = 0.0;
    int remaining = units;

    for (final slab in slabs) {
      if (remaining <= 0) break;
      final int slabCapacity = slab.maxUnits == 99999
          ? remaining
          : slab.maxUnits - slab.minUnits + 1;
      final int unitsInThisSlab = remaining.clamp(0, slabCapacity);
      total += unitsInThisSlab * slab.ratePerUnit;
      remaining -= unitsInThisSlab;
    }

    return total;
  }

  static TariffSlab _getApplicableSlab(int units, bool isProtected) {
    if (isProtected) return WapdaTariffs.residentialSlabs.first;
    return WapdaTariffs.residentialSlabs.skip(1).lastWhere(
          (s) => units >= s.minUnits,
          orElse: () => WapdaTariffs.residentialSlabs.last,
        );
  }

  static double _getFixedCharges(int units, bool isProtected) {
    if (isProtected) return WapdaTariffs.fixedChargesByMaxSlab[50]!;
    for (final entry in WapdaTariffs.fixedChargesByMaxSlab.entries) {
      if (units <= entry.key) return entry.value;
    }
    return WapdaTariffs.fixedChargesByMaxSlab[99999]!;
  }
}

// ─── Supporting Types ─────────────────────────────────────────────

enum ChargeStatus {
  normal,       // ٹھیک ہے
  high,         // قدرے زیادہ
  overcharged,  // زیادہ وصول کیا
}

class OverchargeResult {
  final double expectedAmount;
  final double billedAmount;
  final double difference;
  final ChargeStatus status;
  final TariffResult tariffResult;

  const OverchargeResult({
    required this.expectedAmount,
    required this.billedAmount,
    required this.difference,
    required this.status,
    required this.tariffResult,
  });

  bool get isOvercharged => status == ChargeStatus.overcharged;
  bool get isHigh => status == ChargeStatus.high;
  bool get isNormal => status == ChargeStatus.normal;
}
