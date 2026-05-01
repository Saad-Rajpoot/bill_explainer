import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bijli_samjho/presentation/widgets/charge_card_widget.dart';
import 'package:bijli_samjho/domain/entities/bill_charge.dart';
import 'package:bijli_samjho/core/utils/tariff_calculator.dart';
import 'package:bijli_samjho/language/language_provider.dart';
import 'package:provider/provider.dart';

void main() {
  group('ChargeCardWidget', () {
    Widget _buildWidget({
      required BillCharge charge,
      bool isExpanded = false,
      VoidCallback? onToggle,
    }) {
      return ChangeNotifierProvider(
        create: (_) => LanguageProvider()..loadSavedLanguage(),
        child: MaterialApp(
          home: Scaffold(
            body: ChargeCardWidget(
              charge: charge,
              isExpanded: isExpanded,
              onToggle: onToggle ?? () {},
            ),
          ),
        ),
      );
    }

    final normalCharge = const BillCharge(
      id: 'gst',
      nameKey: 'chargeGst',
      explanationKey: 'chargeGstExpl',
      amount: 1200.0,
      expectedAmount: 1180.0,
      status: ChargeStatus.normal,
    );

    final overchargedCharge = const BillCharge(
      id: 'ed',
      nameKey: 'chargeEd',
      explanationKey: 'chargeEdExpl',
      amount: 500.0,
      expectedAmount: 200.0,
      status: ChargeStatus.overcharged,
    );

    testWidgets('renders charge name', (tester) async {
      await tester.pumpWidget(_buildWidget(charge: normalCharge));
      await tester.pumpAndSettle();
      // Since it uses translation, we check for the translated value
      // Default language is Urdu, so it should find 'سیلز ٹیکس' (GST)
      expect(find.text('سیلز ٹیکس'), findsOneWidget);
    });

    testWidgets('shows amount in PKR format', (tester) async {
      await tester.pumpWidget(_buildWidget(charge: normalCharge));
      await tester.pumpAndSettle();
      expect(find.textContaining('1,200'), findsOneWidget);
    });

    testWidgets('shows normal status chip', (tester) async {
      await tester.pumpWidget(_buildWidget(charge: normalCharge));
      await tester.pumpAndSettle();
      expect(find.text('ٹھیک ہے'), findsOneWidget);
    });

    testWidgets('shows overcharged status chip', (tester) async {
      await tester.pumpWidget(_buildWidget(charge: overchargedCharge));
      await tester.pumpAndSettle();
      expect(find.text('زیادہ وصول کیا'), findsOneWidget);
    });

    testWidgets('calls onToggle when tapped', (tester) async {
      bool toggled = false;
      await tester.pumpWidget(
          _buildWidget(charge: normalCharge, onToggle: () => toggled = true));
      await tester.tap(find.byType(ChargeCardWidget));
      expect(toggled, isTrue);
    });
  });
}
