/// NEPRA-approved tariff slabs for all 8 Pakistani DISCOs.
///
/// Data Source: NEPRA Determination (FY 2024-25)
/// IMPORTANT: These rates MUST be manually updated when NEPRA revises tariffs.
/// Last updated: April 2025
///
/// Slab structure: {minUnits, maxUnits, ratePerUnit (PKR)}
abstract class WapdaTariffs {
  // ─── DISCO identifiers ────────────────────────────────────────────
  static const String lesco = 'LESCO';
  static const String mepco = 'MEPCO';
  static const String fesco = 'FESCO';
  static const String iesco = 'IESCO';
  static const String pesco = 'PESCO';
  static const String hesco = 'HESCO';
  static const String sepco = 'SEPCO';
  static const String qesco = 'QESCO';

  static const List<String> allDiscos = [
    lesco,
    mepco,
    fesco,
    iesco,
    pesco,
    hesco,
    sepco,
    qesco,
  ];

  /// DISCO display names in Urdu
  static const Map<String, String> discoUrduNames = {
    lesco: 'لاہور الیکٹرک سپلائی کمپنی',
    mepco: 'ملتان الیکٹرک پاور کمپنی',
    fesco: 'فیصل آباد الیکٹرک سپلائی کمپنی',
    iesco: 'اسلام آباد الیکٹرک سپلائی کمپنی',
    pesco: 'پشاور الیکٹرک سپلائی کمپنی',
    hesco: 'حیدرآباد الیکٹرک سپلائی کمپنی',
    sepco: 'سکھر الیکٹرک پاور کمپنی',
    qesco: 'کوئٹہ الیکٹرک سپلائی کمپنی',
  };

  /// DISCO service areas in Urdu
  static const Map<String, String> discoAreas = {
    lesco: 'لاہور، شیخوپورہ، ننکانہ صاحب',
    mepco: 'ملتان، بہاولپور، سرگودھا',
    fesco: 'فیصل آباد، جھنگ، ٹوبہ ٹیک سنگھ',
    iesco: 'اسلام آباد، راولپنڈی، جہلم',
    pesco: 'خیبر پختونخوا',
    hesco: 'حیدرآباد، سندھ',
    sepco: 'سکھر، لاڑکانہ',
    qesco: 'کوئٹہ، بلوچستان',
  };

  /// Helpline numbers for each DISCO
  static const Map<String, String> discoHelplines = {
    lesco: '118',
    mepco: '118',
    fesco: '118',
    iesco: '051-9252832',
    pesco: '118',
    hesco: '118',
    sepco: '118',
    qesco: '081-9201360',
  };

  // ─── Residential Tariff Slabs (NEPRA FY2024-25) ──────────────────
  // All DISCOs share the same NEPRA-approved residential slab structure.
  // The rates below are per-kWh in PKR.
  //
  // Protected consumers (≤50 units/month): Special lower rates
  // Slab 1: 1–100 units
  // Slab 2: 101–200 units
  // Slab 3: 201–300 units
  // Slab 4: 301–400 units
  // Slab 5: 401–500 units
  // Slab 6: 501–600 units
  // Slab 7: 601–700 units
  // Slab 8: 701+ units (peak slab)

  static const List<TariffSlab> residentialSlabs = [
    TariffSlab(minUnits: 1, maxUnits: 50, ratePerUnit: 3.95, label: 'محفوظ (۱–۵۰)'),
    TariffSlab(minUnits: 1, maxUnits: 100, ratePerUnit: 7.74, label: 'سلیب ۱ (۱–۱۰۰)'),
    TariffSlab(minUnits: 101, maxUnits: 200, ratePerUnit: 10.06, label: 'سلیب ۲ (۱۰۱–۲۰۰)'),
    TariffSlab(minUnits: 201, maxUnits: 300, ratePerUnit: 17.60, label: 'سلیب ۳ (۲۰۱–۳۰۰)'),
    TariffSlab(minUnits: 301, maxUnits: 400, ratePerUnit: 21.32, label: 'سلیب ۴ (۳۰۱–۴۰۰)'),
    TariffSlab(minUnits: 401, maxUnits: 500, ratePerUnit: 24.43, label: 'سلیب ۵ (۴۰۱–۵۰۰)'),
    TariffSlab(minUnits: 501, maxUnits: 600, ratePerUnit: 26.19, label: 'سلیب ۶ (۵۰۱–۶۰۰)'),
    TariffSlab(minUnits: 601, maxUnits: 700, ratePerUnit: 27.24, label: 'سلیب ۷ (۶۰۱–۷۰۰)'),
    TariffSlab(minUnits: 701, maxUnits: 99999, ratePerUnit: 29.89, label: 'سلیب ۸ (۷۰۱+)'),
  ];

  // ─── Fixed Charges per Month (PKR) by slab ────────────────────────
  static const Map<int, double> fixedChargesByMaxSlab = {
    50: 75,    // Protected consumer
    100: 175,
    200: 175,
    300: 250,
    400: 325,
    500: 450,
    600: 600,
    700: 750,
    99999: 950, // 701+
  };

  // ─── Additional Charges & Taxes ───────────────────────────────────
  /// General Sales Tax rate (18%)
  static const double gstRate = 0.18;

  /// Electricity Duty rate (1.5%)
  static const double electricityDutyRate = 0.015;

  /// PTV / TV License Fee (PKR per month)
  static const double tvFee = 35.0;

  /// Neelum Jhelum Surcharge (PKR per unit)
  static const double njSurchargePerUnit = 0.10;

  /// Withholding Tax (TDS) for filer (%)
  static const double tdsRateFiler = 0.12;

  /// Withholding Tax (TDS) for non-filer (%)
  static const double tdsRateNonFiler = 0.15;

  /// Quarterly Tariff Adjustment range (PKR per unit) — varies each quarter
  /// Negative = credit, Positive = additional charge
  static const double qtaDefault = 0.0; // Fetched from Supabase in production

  // ─── PESCO / HESCO / SEPCO / QESCO special rates ─────────────────
  // These DISCOs may have slight variations approved by NEPRA.
  // For now, residential slabs are uniform across all DISCOs.
  // TODO: Add disco-specific commercial/agricultural tariffs.
}

/// Represents a single tariff slab.
class TariffSlab {
  final int minUnits;
  final int maxUnits;
  final double ratePerUnit; // PKR per kWh
  final String label; // Urdu label for display

  const TariffSlab({
    required this.minUnits,
    required this.maxUnits,
    required this.ratePerUnit,
    required this.label,
  });

  bool containsUnit(int unit) => unit >= minUnits && unit <= maxUnits;
}
