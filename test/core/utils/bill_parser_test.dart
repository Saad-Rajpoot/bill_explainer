import 'package:flutter_test/flutter_test.dart';
import 'package:bijli_samjho/features/bill_scan/data/parsers/bill_parser.dart';
import 'package:bijli_samjho/core/constants/wapda_tariffs.dart';

void main() {
  group('BillParser', () {
    // ─── LESCO sample bill OCR output ──────────────────────────────
    const lescoSampleOcr = '''
      LESCO
      LAHORE ELECTRIC SUPPLY COMPANY
      CONSUMER NO: 1234567890
      REFERENCE NO: 987654321
      BILL MONTH: OCT 2024
      DUE DATE: 25-10-2024
      UNITS CONSUMED: 350
      ENERGY CHARGES: 5890.00
      FIXED CHARGES: 325.00
      FC: 420.50
      ED: 99.20
      GST: 1184.50
      TV FEE: 35.00
      NJ SURCHARGE: 35.00
      TDS: 890.00
      TOTAL AMOUNT: 8879.20
    ''';

    group('parse()', () {
      test('returns non-null for valid LESCO bill', () {
        final result = BillParser.parse(lescoSampleOcr);
        expect(result, isNotNull);
      });

      test('detects LESCO as disco name', () {
        final result = BillParser.parse(lescoSampleOcr);
        expect(result!.discoName, equals(WapdaTariffs.lesco));
      });

      test('extracts consumer number', () {
        final result = BillParser.parse(lescoSampleOcr);
        expect(result!.consumerNumber, equals('1234567890'));
      });

      test('extracts units consumed', () {
        final result = BillParser.parse(lescoSampleOcr);
        expect(result!.unitsConsumed, equals(350));
      });

      test('extracts total amount', () {
        final result = BillParser.parse(lescoSampleOcr);
        expect(result!.totalAmount, closeTo(8879.20, 0.1));
      });

      test('extracts GST', () {
        final result = BillParser.parse(lescoSampleOcr);
        expect(result!.gst, closeTo(1184.50, 0.1));
      });

      test('extracts TV fee', () {
        final result = BillParser.parse(lescoSampleOcr);
        expect(result!.tvFee, closeTo(35.0, 0.1));
      });

      test('extracts FC adjustment', () {
        final result = BillParser.parse(lescoSampleOcr);
        expect(result!.fcAdjustment, closeTo(420.50, 0.1));
      });

      test('extracts due date correctly', () {
        final result = BillParser.parse(lescoSampleOcr);
        expect(result!.dueDate, isNotNull);
        expect(result.dueDate!.day, equals(25));
        expect(result.dueDate!.month, equals(10));
        expect(result.dueDate!.year, equals(2024));
      });

      test('extracts bill month', () {
        final result = BillParser.parse(lescoSampleOcr);
        expect(result!.billMonth, isNotNull);
        expect(result.billMonth!.month, equals(10));
        expect(result.billMonth!.year, equals(2024));
      });
    });

    group('DISCO detection', () {
      test('detects MEPCO', () {
        final r = BillParser.parse('MEPCO MULTAN ELECTRIC POWER COMPANY '
            'CONSUMER NO: 123 UNITS CONSUMED: 200 TOTAL AMOUNT: 5000 '
            'DUE DATE: 25-10-2024 BILL');
        expect(r?.discoName, equals(WapdaTariffs.mepco));
      });

      test('detects IESCO by city name', () {
        final r = BillParser.parse('ISLAMABAD ELECTRICITY COMPANY '
            'CONSUMER NO: 123 UNITS: 200 AMOUNT: 5000 BILL DUE DATE: 25-10-2024');
        expect(r?.discoName, equals(WapdaTariffs.iesco));
      });

      test('detects PESCO by KPK reference', () {
        final r = BillParser.parse('KPK ELECTRICITY PESHAWAR CONSUMER NO: 123 '
            'UNITS: 150 AMOUNT: 3500 BILL DUE DATE: 25-10-2024');
        expect(r?.discoName, equals(WapdaTariffs.pesco));
      });
    });

    group('Confidence score', () {
      test('full OCR gives high confidence', () {
        final result = BillParser.parse(lescoSampleOcr);
        expect(result!.confidenceScore, greaterThanOrEqualTo(75));
      });

      test('partial OCR gives lower confidence', () {
        const partial = 'LESCO CONSUMER UNITS 200 BILL ELECTRICITY';
        final result = BillParser.parse(partial);
        if (result != null) {
          expect(result.confidenceScore, lessThan(75));
        }
      });
    });

    group('Invalid inputs', () {
      test('returns null for non-bill text', () {
        final result = BillParser.parse('Hello world, this is a random text.');
        expect(result, isNull);
      });

      test('returns null for empty string', () {
        final result = BillParser.parse('');
        expect(result, isNull);
      });

      test('hasMinimumData is false when no units or amount', () {
        final result = BillParser.parse(
            'LESCO CONSUMER NO: 123 BILL ELECTRICITY DUE DATE: 25-10-2024 AMOUNT');
        if (result != null) {
          expect(result.hasMinimumData, isFalse);
        }
      });
    });
  });
}
