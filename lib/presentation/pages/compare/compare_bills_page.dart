import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_strings.dart';
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
    return BlocProvider(
      create: (_) => sl<BillHistoryBlocImpl>()
        ..add(const BillHistoryLoadRequested()),
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: const Text(AppStrings.compareTitle),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () => context.go(AppRoutes.home),
          ),
        ),
        body: BlocBuilder<BillHistoryBlocImpl, BillHistoryState>(
          builder: (context, state) {
            if (state is! BillHistoryLoaded) {
              return const Center(
                  child: CircularProgressIndicator(color: AppColors.primary));
            }
            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: _Selector(
                        label: AppStrings.compareBill1,
                        selected: _bill1,
                        bills: state.bills,
                        onSelect: (b) => setState(() => _bill1 = b),
                      )),
                      const SizedBox(width: 12),
                      Expanded(child: _Selector(
                        label: AppStrings.compareBill2,
                        selected: _bill2,
                        bills: state.bills,
                        onSelect: (b) => setState(() => _bill2 = b),
                      )),
                    ],
                  ),
                  const SizedBox(height: 24),
                  if (_bill1 != null && _bill2 != null)
                    _Table(b1: _bill1!, b2: _bill2!)
                        .animate().fadeIn().slideY(begin: 0.1),
                ],
              ),
            );
          },
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
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
        builder: (_) => ListView.builder(
          itemCount: bills.length,
          itemBuilder: (_, i) => ListTile(
            onTap: () { onSelect(bills[i]); Navigator.pop(context); },
            trailing: Text(UrduFormatter.pkr(bills[i].totalAmount),
                style: const TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700)),
            title: Text(UrduFormatter.billMonth(bills[i].billMonth),
                textAlign: TextAlign.right,
                style: const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 15)),
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: selected != null ? AppColors.primary : AppColors.divider,
              width: selected != null ? 2 : 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(label, style: const TextStyle(fontFamily: 'NotoNastaliqUrdu',
                fontSize: 12, color: AppColors.textSecondary)),
            const SizedBox(height: 8),
            if (selected != null) ...[
              Text(UrduFormatter.billMonth(selected!.billMonth),
                  style: const TextStyle(fontFamily: 'NotoNastaliqUrdu',
                      fontSize: 15, fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary)),
              Text(UrduFormatter.pkr(selected!.totalAmount),
                  style: const TextStyle(fontFamily: 'Roboto',
                      fontSize: 14, color: AppColors.primary)),
            ] else
              const Text(AppStrings.compareSelect,
                  style: TextStyle(fontFamily: 'NotoNastaliqUrdu',
                      fontSize: 13, color: AppColors.textHint)),
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
          _Row(field: AppStrings.historyMonth,
              v1: UrduFormatter.billMonth(b1.billMonth),
              v2: UrduFormatter.billMonth(b2.billMonth)),
          const Divider(height: 16),
          _Row(field: AppStrings.historyUnits,
              v1: b1.unitsConsumed.toString(),
              v2: b2.unitsConsumed.toString()),
          const Divider(height: 16),
          _Row(field: AppStrings.historyAmount,
              v1: UrduFormatter.pkr(b1.totalAmount),
              v2: UrduFormatter.pkr(b2.totalAmount)),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
            decoration: BoxDecoration(
              color: unitsDiff > 0
                  ? AppColors.errorBackground : AppColors.successBackground,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              unitsDiff > 0
                  ? 'دوسرے بل میں $unitsDiff یونٹ زیادہ — ₨${amountDiff.toStringAsFixed(0)} زیادہ'
                  : unitsDiff < 0
                      ? 'دوسرے بل میں ${unitsDiff.abs()} یونٹ کم — ₨${amountDiff.abs().toStringAsFixed(0)} کی بچت'
                      : 'دونوں بل برابر ہیں',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'NotoNastaliqUrdu', fontSize: 15,
                fontWeight: FontWeight.w600,
                color: unitsDiff > 0 ? AppColors.error : AppColors.success,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final String field, v1, v2;
  const _Row({required this.field, required this.v1, required this.v2});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(v2, textAlign: TextAlign.left,
            style: const TextStyle(fontFamily: 'Roboto', fontSize: 14,
                color: AppColors.textPrimary))),
        Text(field, textAlign: TextAlign.center,
            style: const TextStyle(fontFamily: 'NotoNastaliqUrdu',
                fontSize: 13, color: AppColors.textSecondary)),
        Expanded(child: Text(v1, textAlign: TextAlign.right,
            style: const TextStyle(fontFamily: 'Roboto', fontSize: 14,
                color: AppColors.textPrimary))),
      ],
    );
  }
}
