import 'package:flutter_test/flutter_test.dart';
import 'package:bijli_samjho/core/utils/tariff_calculator.dart';
import 'package:bijli_samjho/core/constants/wapda_tariffs.dart';

void main() {
  group('TariffCalculator', () {
    // ─── Protected consumer (≤ 50 units) ──────────────────────────
    group('Protected consumer (≤ 50 units)', () {
      test('calculates flat rate for 30 units', () {
        final result = TariffCalculator.calculate(
          units: 30, discoName: WapdaTariffs.lesco);
        expect(result.isProtectedConsumer, isTrue);
        expect(result.energyCharges, closeTo(30 * 3.95, 0.01));
        expect(result.fixedCharges, equals(75.0));
      });

      test('calculates flat rate for 50 units', () {
        final result = TariffCalculator.calculate(
          units: 50, discoName: WapdaTariffs.mepco);
        expect(result.isProtectedConsumer, isTrue);
        expect(result.energyCharges, closeTo(50 * 3.95, 0.01));
      });
    });

    // ─── Slab 1: 1–100 units ───────────────────────────────────────
    group('Slab 1 (1–100 units)', () {
      test('100 units falls in slab 1', () {
        final result = TariffCalculator.calculate(
          units: 100, discoName: WapdaTariffs.fesco);
        expect(result.isProtectedConsumer, isFalse);
        expect(result.appliedSlab.maxUnits, equals(100));
        expect(result.energyCharges, closeTo(100 * 7.74, 0.01));
        expect(result.fixedCharges, equals(175.0));
      });
    });

    // ─── Slab 2: 101–200 units ─────────────────────────────────────
    group('Slab 2 (101–200 units)', () {
      test('200 units: first 100 at slab-1 rate + next 100 at slab-2', () {
        final result = TariffCalculator.calculate(
          units: 200, discoName: WapdaTariffs.iesco);
        final expected = (100 * 7.74) + (100 * 10.06);
        expect(result.energyCharges, closeTo(expected, 0.5));
        expect(result.fixedCharges, equals(175.0));
      });
    });

    // ─── Slab 3: 201–300 units ─────────────────────────────────────
    group('Slab 3 (201–300 units)', () {
      test('300 units telescopic calculation', () {
        final result = TariffCalculator.calculate(
          units: 300, discoName: WapdaTariffs.pesco);
        final expected = (100 * 7.74) + (100 * 10.06) + (100 * 17.60);
        expect(result.energyCharges, closeTo(expected, 0.5));
        expect(result.fixedCharges, equals(250.0));
      });
    });

    // ─── Slab 4: 301–400 units ─────────────────────────────────────
    group('Slab 4 (301–400 units)', () {
      test('350 units telescopic', () {
        final result = TariffCalculator.calculate(
          units: 350, discoName: WapdaTariffs.lesco);
        final expected = (100 * 7.74) + (100 * 10.06) +
            (100 * 17.60) + (50 * 21.32);
        expect(result.energyCharges, closeTo(expected, 0.5));
        expect(result.fixedCharges, equals(325.0));
      });
    });

    // ─── Tax calculations ──────────────────────────────────────────
    group('Tax and surcharge calculations', () {
      test('GST is 18% of totalBeforeTax', () {
        final result = TariffCalculator.calculate(
          units: 200, discoName: WapdaTariffs.lesco);
        expect(result.gst,
            closeTo(result.totalBeforeTax * 0.18, 1.0));
      });

      test('ED is 1.5% of subtotal', () {
        final result = TariffCalculator.calculate(
          units: 200, discoName: WapdaTariffs.lesco);
        final subtotal = result.energyCharges + result.fixedCharges +
            result.fcAdjustment + result.qtaCharge + result.njSurcharge;
        expect(result.electricityDuty, closeTo(subtotal * 0.015, 0.5));
      });

      test('TV fee is always 35', () {
        final result = TariffCalculator.calculate(
          units: 500, discoName: WapdaTariffs.mepco);
        expect(result.tvFee, equals(35.0));
      });

      test('NJ surcharge = 0.10 PKR per unit', () {
        final result = TariffCalculator.calculate(
          units: 200, discoName: WapdaTariffs.fesco);
        expect(result.njSurcharge, closeTo(200 * 0.10, 0.01));
      });

      test('TDS filer rate is 12%', () {
        final result = TariffCalculator.calculate(
          units: 300, discoName: WapdaTariffs.lesco, isFiler: true);
        final grandBeforeTds = result.totalBeforeTax + result.gst;
        expect(result.tds, closeTo(grandBeforeTds * 0.12, 1.0));
      });

      test('TDS non-filer rate is 15%', () {
        final result = TariffCalculator.calculate(
          units: 300, discoName: WapdaTariffs.lesco, isFiler: false);
        final grandBeforeTds = result.totalBeforeTax + result.gst;
        expect(result.tds, closeTo(grandBeforeTds * 0.15, 1.0));
      });
    });

    // ─── Overcharge validation ─────────────────────────────────────
    group('validateBill', () {
      test('returns normal when billed ≈ expected', () {
        final calc = TariffCalculator.calculate(
          units: 200, discoName: WapdaTariffs.lesco);
        final result = TariffCalculator.validateBill(
          units: 200,
          billedAmount: calc.grandTotal,
          discoName: WapdaTariffs.lesco,
        );
        expect(result.status, equals(ChargeStatus.normal));
        expect(result.isOvercharged, isFalse);
      });

      test('returns overcharged when billed > expected by 20%+', () {
        final calc = TariffCalculator.calculate(
          units: 200, discoName: WapdaTariffs.lesco);
        final result = TariffCalculator.validateBill(
          units: 200,
          billedAmount: calc.grandTotal * 1.30, // 30% over
          discoName: WapdaTariffs.lesco,
        );
        expect(result.status, equals(ChargeStatus.overcharged));
        expect(result.isOvercharged, isTrue);
      });

      test('returns high when billed > expected by 10%', () {
        final calc = TariffCalculator.calculate(
          units: 200, discoName: WapdaTariffs.lesco);
        final result = TariffCalculator.validateBill(
          units: 200,
          billedAmount: calc.grandTotal * 1.12,
          discoName: WapdaTariffs.lesco,
        );
        expect(result.status, equals(ChargeStatus.high));
      });

      test('difference amount is correct', () {
        const excess = 500.0;
        final calc = TariffCalculator.calculate(
          units: 200, discoName: WapdaTariffs.lesco);
        final result = TariffCalculator.validateBill(
          units: 200,
          billedAmount: calc.grandTotal + excess,
          discoName: WapdaTariffs.lesco,
        );
        expect(result.difference, closeTo(excess, 10.0));
      });
    });

    // ─── All DISCOs ────────────────────────────────────────────────
    group('All DISCOs produce valid results', () {
      for (final disco in WapdaTariffs.allDiscos) {
        test('$disco: 300 units returns positive grand total', () {
          final result = TariffCalculator.calculate(
            units: 300, discoName: disco);
          expect(result.grandTotal, greaterThan(0));
        });
      }
    });

    // ─── Edge cases ────────────────────────────────────────────────
    group('Edge cases', () {
      test('1 unit protected consumer', () {
        final result = TariffCalculator.calculate(
          units: 1, discoName: WapdaTariffs.lesco);
        expect(result.isProtectedConsumer, isTrue);
        expect(result.grandTotal, greaterThan(0));
      });

      test('700 units peak slab', () {
        final result = TariffCalculator.calculate(
          units: 700, discoName: WapdaTariffs.lesco);
        expect(result.grandTotal, greaterThan(0));
        expect(result.fixedCharges, equals(750.0));
      });

      test('1000 units max slab fixed charges', () {
        final result = TariffCalculator.calculate(
          units: 1000, discoName: WapdaTariffs.lesco);
        expect(result.fixedCharges, equals(950.0));
      });

      test('FC adjustment adds to energy cost', () {
        final without = TariffCalculator.calculate(
          units: 200, discoName: WapdaTariffs.lesco, fcAdjustmentPerUnit: 0);
        final withFc = TariffCalculator.calculate(
          units: 200, discoName: WapdaTariffs.lesco, fcAdjustmentPerUnit: 5.0);
        expect(withFc.grandTotal, greaterThan(without.grandTotal));
        expect(withFc.fcAdjustment, closeTo(200 * 5.0, 0.01));
      });
    });
  });
}
