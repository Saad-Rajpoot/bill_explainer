import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../language/language_provider.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/router/app_router.dart';
import '../../../core/utils/urdu_formatter.dart';
import '../../../domain/entities/bill.dart';
import '../../../injection_container.dart';
import '../../blocs/bill_history/bill_history_bloc.dart';
import '../../blocs/bill_history/bill_history_bloc_impl.dart';

class CompareBillsPage extends StatefulWidget {
  const CompareBillsPage({super.key});
  @override
  State<CompareBillsPage> createState() => _CompareBillsPageState();
}

class _CompareBillsPageState extends State<CompareBillsPage> {
  Bill? _bill1, _bill2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text(Provider.of<LanguageProvider>(context).translate('compareTitle')),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () => context.go(AppRoutes.home),
          ),
        ),
        body: BlocBuilder<BillHistoryBlocImpl, BillHistoryState>(
          builder: (context, state) {
            if (state is BillHistoryLoading) {
              return const Center(
                  child: CircularProgressIndicator(color: AppColors.primary));
            }
            if (state is BillHistoryEmpty) {
              return const _EmptyCompareView();
            }
            if (state is BillHistoryLoaded) {
              if (state.bills.isEmpty) {
                return const _EmptyCompareView();
              }
              return SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(Provider.of<LanguageProvider>(context).translate('compare_how_to'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                            fontSize: 14, color: AppColors.textSecondary)),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(child: _Selector(
                          label: Provider.of<LanguageProvider>(context).translate('compare_step_1'),
                          selected: _bill1,
                          bills: state.bills,
                          onSelect: (b) => setState(() => _bill1 = b),
                        )),
                        const SizedBox(width: 16),
                        Expanded(child: _Selector(
                          label: Provider.of<LanguageProvider>(context).translate('compare_step_2'),
                          selected: _bill2,
                          bills: state.bills,
                          onSelect: (b) => setState(() => _bill2 = b),
                        )),
                      ],
                    ),
                    const SizedBox(height: 32),
                    if (_bill1 != null && _bill2 != null)
                      _Table(b1: _bill1!, b2: _bill2!)
                          .animate().fadeIn().slideY(begin: 0.1)
                    else
                      Container(
                        padding: const EdgeInsets.all(40),
                        child: Opacity(
                          opacity: 0.3,
                          child: Column(
                            children: [
                              const Icon(Icons.bar_chart_rounded, size: 80),
                              const SizedBox(height: 16),
                              Text(Provider.of<LanguageProvider>(context).translate('compareSelect'),
                                  style: const TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),;
  }
}

class _EmptyCompareView extends StatelessWidget {
  const _EmptyCompareView();
  @override
  Widget build(BuildContext context) {
    final lp = Provider.of<LanguageProvider>(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.compare_arrows_rounded, size: 80, color: AppColors.primary),
            ),
            const SizedBox(height: 32),
            Text(lp.translate('compareEmpty'),
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: lp.currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                    fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.textPrimary, height: 1.5)),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () => context.go('${AppRoutes.home}/scan'),
              icon: const Icon(Icons.add_a_photo_rounded),
              label: Text(lp.translate('homeScanButton')),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                textStyle: TextStyle(
                  fontFamily: lp.currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Selector extends StatelessWidget {
  final String label;
  final Bill? selected;
  final List<Bill> bills;
  final ValueChanged<Bill> onSelect;
  const _Selector({required this.label, required this.selected,
      required this.bills, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    final lp = Provider.of<LanguageProvider>(context);
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (_) => Container(
          decoration: const BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 12),
              Container(width: 40, height: 4, decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(2))),
              const SizedBox(height: 24),
              Text(label, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: bills.length,
                  padding: const EdgeInsets.only(bottom: 32),
                  itemBuilder: (_, i) => ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    onTap: () { onSelect(bills[i]); Navigator.pop(context); },
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(color: AppColors.primary.withOpacity(0.1), borderRadius: BorderRadius.circular(12)),
                      child: const Icon(Icons.receipt_rounded, color: AppColors.primary),
                    ),
                    trailing: const Icon(Icons.chevron_right_rounded),
                    title: Text(UrduFormatter.billMonth(bills[i].billMonth, locale: lp.currentLanguageCode),
                        style: TextStyle(fontFamily: lp.currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto', fontWeight: FontWeight.bold)),
                    subtitle: Text(UrduFormatter.pkr(bills[i].totalAmount, locale: lp.currentLanguageCode),
                        style: const TextStyle(fontFamily: 'Roboto', color: AppColors.primary)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: selected != null ? AppColors.primary.withOpacity(0.05) : AppColors.surface,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
              color: selected != null ? AppColors.primary : AppColors.divider,
              width: selected != null ? 2 : 1),
          boxShadow: [
            if (selected != null)
              BoxShadow(color: AppColors.primary.withOpacity(0.1), blurRadius: 20, offset: const Offset(0, 8))
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (selected != null) ...[
              const Icon(Icons.check_circle_rounded, color: AppColors.primary, size: 28),
              const SizedBox(height: 8),
              Text(UrduFormatter.billMonth(selected!.billMonth, locale: lp.currentLanguageCode),
                  style: TextStyle(fontFamily: lp.currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                      fontSize: 14, fontWeight: FontWeight.bold)),
            ] else ...[
              const Icon(Icons.add_circle_outline_rounded, color: AppColors.textHint, size: 32),
              const SizedBox(height: 8),
              Text(label, style: TextStyle(fontFamily: lp.currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                  fontSize: 14, color: AppColors.textSecondary, fontWeight: FontWeight.w600)),
            ],
          ],
        ),
      ),
    );
  }
}

class _Table extends StatelessWidget {
  final Bill b1, b2;
  const _Table({required this.b1, required this.b2});

  @override
  Widget build(BuildContext context) {
    final unitsDiff = b2.unitsConsumed - b1.unitsConsumed;
    final amountDiff = b2.totalAmount - b1.totalAmount;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: [
          // Table Header
          Builder(builder: (context) {
            final lp = Provider.of<LanguageProvider>(context);
            final isUrdu = lp.currentLanguageCode == 'ur';
            final leftBill = isUrdu ? b2 : b1;
            final rightBill = isUrdu ? b1 : b2;
            
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  Expanded(child: Text(UrduFormatter.billMonth(leftBill.billMonth, locale: lp.currentLanguageCode),
                      textAlign: isUrdu ? TextAlign.right : TextAlign.left,
                      style: const TextStyle(fontWeight: FontWeight.w900, color: AppColors.primary))),
                  const SizedBox(width: 8),
                  Text("VS", style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.textHint.withOpacity(0.5), fontSize: 10)),
                  const SizedBox(width: 8),
                  Expanded(child: Text(UrduFormatter.billMonth(rightBill.billMonth, locale: lp.currentLanguageCode),
                      textAlign: isUrdu ? TextAlign.left : TextAlign.right,
                      style: const TextStyle(fontWeight: FontWeight.w900, color: AppColors.primary))),
                ],
              ),
            );
          }),
          const Divider(thickness: 2),
          const SizedBox(height: 12),
          _Row(field: Provider.of<LanguageProvider>(context).translate('historyUnits'),
              v1: b1.unitsConsumed.toString(),
              v2: b2.unitsConsumed.toString(),
              isIncrease: b2.unitsConsumed > b1.unitsConsumed),
          const Divider(height: 16),
          _Row(field: Provider.of<LanguageProvider>(context).translate('compareCost'),
              v1: UrduFormatter.pkr(b1.costOfElectricity ?? 0, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
              v2: UrduFormatter.pkr(b2.costOfElectricity ?? 0, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
              isIncrease: (b2.costOfElectricity ?? 0) > (b1.costOfElectricity ?? 0)),
          const Divider(height: 16),
          _Row(field: Provider.of<LanguageProvider>(context).translate('compareFpa'),
              v1: UrduFormatter.pkr(b1.fuelPriceAdjustment ?? 0, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
              v2: UrduFormatter.pkr(b2.fuelPriceAdjustment ?? 0, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
              isIncrease: (b2.fuelPriceAdjustment ?? 0) > (b1.fuelPriceAdjustment ?? 0)),
          const Divider(height: 16),
          _Row(field: Provider.of<LanguageProvider>(context).translate('compareFc'),
              v1: UrduFormatter.pkr(b1.fcSurcharge ?? 0, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
              v2: UrduFormatter.pkr(b2.fcSurcharge ?? 0, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
              isIncrease: (b2.fcSurcharge ?? 0) > (b1.fcSurcharge ?? 0)),
          const Divider(height: 16),
          _Row(field: Provider.of<LanguageProvider>(context).translate('compareGst'),
              v1: UrduFormatter.pkr(b1.gst ?? 0, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
              v2: UrduFormatter.pkr(b2.gst ?? 0, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
              isIncrease: (b2.gst ?? 0) > (b1.gst ?? 0)),
          const Divider(height: 16),
          _Row(field: Provider.of<LanguageProvider>(context).translate('compareTax'),
              v1: UrduFormatter.pkr(b1.incomeTax ?? 0, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
              v2: UrduFormatter.pkr(b2.incomeTax ?? 0, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
              isIncrease: (b2.incomeTax ?? 0) > (b1.incomeTax ?? 0)),
          const Divider(height: 16),
          _Row(field: Provider.of<LanguageProvider>(context).translate('historyAmount'),
              v1: UrduFormatter.pkr(b1.totalAmount, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
              v2: UrduFormatter.pkr(b2.totalAmount, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
              isIncrease: b2.totalAmount > b1.totalAmount,
              isBold: true),
          const SizedBox(height: 24),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
            decoration: BoxDecoration(
              color: unitsDiff > 0
                  ? AppColors.errorBackground : AppColors.successBackground,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: unitsDiff > 0 ? AppColors.error.withOpacity(0.2) : AppColors.success.withOpacity(0.2)),
            ),
            child: Builder(builder: (context) {
              final lp = Provider.of<LanguageProvider>(context);
              String text = "";
              if (unitsDiff > 0) {
                text = lp.translate('compare_more')
                  .replaceAll('{diff}', unitsDiff.toString())
                  .replaceAll('{amount}', UrduFormatter.pkr(amountDiff.abs(), locale: lp.currentLanguageCode));
              } else if (unitsDiff < 0) {
                text = lp.translate('compare_less')
                  .replaceAll('{diff}', unitsDiff.abs().toString())
                  .replaceAll('{amount}', UrduFormatter.pkr(amountDiff.abs(), locale: lp.currentLanguageCode));
              } else {
                text = lp.translate('compare_equal');
              }
              return Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: lp.currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto', fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: unitsDiff > 0 ? AppColors.error : AppColors.success,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final String field, v1, v2;
  final bool isIncrease;
  final bool isBold;
  const _Row({required this.field, required this.v1, required this.v2,
      this.isIncrease = false, this.isBold = false});
  @override
  Widget build(BuildContext context) {
    final lp = Provider.of<LanguageProvider>(context);
    final isUrdu = lp.currentLanguageCode == 'ur';
    
    final leftValue = isUrdu ? v2 : v1;
    final rightValue = isUrdu ? v1 : v2;
    final leftAlign = isUrdu ? TextAlign.right : TextAlign.left;
    final rightAlign = isUrdu ? TextAlign.left : TextAlign.right;

    return Row(
      children: [
        Expanded(child: Text(leftValue, textAlign: leftAlign,
            style: TextStyle(fontFamily: 'Roboto', fontSize: isBold ? 16 : 14,
                fontWeight: isBold || isIncrease ? FontWeight.w700 : FontWeight.w400,
                color: isIncrease ? AppColors.error : AppColors.textPrimary))),
        const SizedBox(width: 8),
        Text(field, textAlign: TextAlign.center,
            style: TextStyle(fontFamily: isUrdu ? 'NotoNastaliqUrdu' : 'Roboto',
                fontSize: 13, color: AppColors.textSecondary, fontWeight: isBold ? FontWeight.w700 : FontWeight.w400)),
        const SizedBox(width: 8),
        Expanded(child: Text(rightValue, textAlign: rightAlign,
            style: TextStyle(fontFamily: 'Roboto', fontSize: isBold ? 16 : 14,
                fontWeight: isBold ? FontWeight.w700 : FontWeight.w400,
                color: AppColors.textPrimary))),
      ],
    );
  }
}
