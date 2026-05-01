import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bijli_samjho/presentation/widgets/charge_card_widget.dart';
import 'package:bijli_samjho/domain/entities/bill_charge.dart';
import 'package:bijli_samjho/core/utils/tariff_calculator.dart';

void main() {
  group('ChargeCardWidget', () {
    Widget _buildWidget({
      required BillCharge charge,
      bool isExpanded = false,
      VoidCallback? onToggle,
    }) {
      return MaterialApp(
        home: Scaffold(
          body: ChargeCardWidget(
            charge: charge,
            isExpanded: isExpanded,
            onToggle: onToggle ?? () {},
          ),
        ),
      );
    }

    final normalCharge = const BillCharge(
      id: 'gst',
      nameUrdu: 'سیلز ٹیکس',
      explanationUrdu: 'وفاقی حکومت کا ٹیکس',
      amount: 1200.0,
      expectedAmount: 1180.0,
      status: ChargeStatus.normal,
    );

    final overchargedCharge = const BillCharge(
      id: 'ed',
      nameUrdu: 'بجلی ڈیوٹی',
      explanationUrdu: 'صوبائی حکومت کا ٹیکس',
      amount: 500.0,
      expectedAmount: 200.0,
      status: ChargeStatus.overcharged,
    );

    testWidgets('renders charge name', (tester) async {
      await tester.pumpWidget(_buildWidget(charge: normalCharge));
      expect(find.text('سیلز ٹیکس'), findsOneWidget);
    });

    testWidgets('shows amount in PKR format', (tester) async {
      await tester.pumpWidget(_buildWidget(charge: normalCharge));
      expect(find.textContaining('1,200'), findsOneWidget);
    });

    testWidgets('shows normal status chip', (tester) async {
      await tester.pumpWidget(_buildWidget(charge: normalCharge));
      expect(find.text('ٹھیک ہے'), findsOneWidget);
    });

    testWidgets('shows overcharged status chip', (tester) async {
      await tester.pumpWidget(_buildWidget(charge: overchargedCharge));
      expect(find.text('زیادہ وصول کیا'), findsOneWidget);
    });

    testWidgets('explanation is hidden when collapsed', (tester) async {
      await tester.pumpWidget(
          _buildWidget(charge: normalCharge, isExpanded: false));
      // Explanation text should not be visible/hit-testable
      expect(find.text('وفاقی حکومت کا ٹیکس').hitTestable(), findsNothing);
    });

    testWidgets('explanation is shown when expanded', (tester) async {
      await tester.pumpWidget(
          _buildWidget(charge: normalCharge, isExpanded: true));
      await tester.pumpAndSettle();
      expect(find.text('وفاقی حکومت کا ٹیکس'), findsOneWidget);
    });

    testWidgets('calls onToggle when tapped', (tester) async {
      bool toggled = false;
      await tester.pumpWidget(
          _buildWidget(charge: normalCharge, onToggle: () => toggled = true));
      await tester.tap(find.byType(ChargeCardWidget));
      expect(toggled, isTrue);
    });

    testWidgets('overcharge row visible when expanded and overcharged',
        (tester) async {
      await tester.pumpWidget(
          _buildWidget(charge: overchargedCharge, isExpanded: true));
      await tester.pumpAndSettle();
      expect(find.text('زیادہ وصول کیا گیا'), findsOneWidget);
    });
  });
}
