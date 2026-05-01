import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
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

class BillHistoryPage extends StatelessWidget {
  const BillHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<BillHistoryBlocImpl>()
        ..add(const BillHistoryLoadRequested()),
      child: const _HistoryView(),
    );
  }
}

class _HistoryView extends StatelessWidget {
  const _HistoryView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(Provider.of<LanguageProvider>(context).translate('historyTitle'),
            style: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur'
                ? const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 18)
                : GoogleFonts.outfit(fontWeight: FontWeight.w600)),
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
            return _EmptyView();
          }
          if (state is BillHistoryLoaded) {
            return _LoadedView(state: state);
          }
          if (state is BillHistoryFailure) {
            return Center(child: Text(state.messageUrdu,
                style: TextStyle(fontFamily: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                    fontSize: 18)));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

class _LoadedView extends StatelessWidget {
  final BillHistoryLoaded state;
  const _LoadedView({required this.state});

  @override
  Widget build(BuildContext context) {
    final bills = state.bills;
    return CustomScrollView(
      slivers: [
        // ─── Stats row ────────────────────────────────────────────
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              children: [
                Expanded(child: _StatCard(
                  label: Provider.of<LanguageProvider>(context).translate('historyUnits'),
                  value: UrduFormatter.units(state.totalUnits, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
                  icon: Icons.bolt, color: AppColors.secondary,
                )),
                const SizedBox(width: 12),
                Expanded(child: _StatCard(
                  label: Provider.of<LanguageProvider>(context).translate('historyAmount'),
                  value: UrduFormatter.pkr(state.totalAmount, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
                  icon: Icons.payments_rounded, color: AppColors.primary,
                )),
              ],
            ).animate().fadeIn(),
          ),
        ),

        // ─── Chart ────────────────────────────────────────────────
        if (bills.length >= 2)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: _BillChart(bills: bills.take(6).toList().reversed.toList()),
            ).animate(delay: 100.ms).fadeIn(),
          ),

        // ─── List ─────────────────────────────────────────────────
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
            child: Align(
              alignment: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? Alignment.centerRight : Alignment.centerLeft,
              child: Text(Provider.of<LanguageProvider>(context).translate('historyTitle'),
                  style: TextStyle(fontFamily: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                      fontSize: 18, fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary)),
            ),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 32),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, i) => _BillTile(bill: bills[i])
                  .animate(delay: Duration(milliseconds: 40 * i)).fadeIn(),
              childCount: bills.length,
            ),
          ),
        ),
      ],
    );
  }
}

// ─── Chart ─────────────────────────────────────────────────────────────────

class _BillChart extends StatelessWidget {
  final List<Bill> bills;
  const _BillChart({required this.bills});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Provider.of<LanguageProvider>(context).translate('chartTitle'),
              style: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur'
                  ? const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.textPrimary)
                  : GoogleFonts.outfit(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.textPrimary)),
          const SizedBox(height: 20),
          SizedBox(
            height: 150,
            child: BarChart(
              BarChartData(
                barGroups: bills.asMap().entries.map((e) {
                  return BarChartGroupData(x: e.key, barRods: [
                    BarChartRodData(
                      toY: e.value.unitsConsumed.toDouble(),
                      color: e.value.isOvercharged
                          ? AppColors.error : AppColors.primary,
                      width: 18,
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ]);
                }).toList(),
                gridData: const FlGridData(show: false),
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (val, _) {
                        final i = val.toInt();
                        if (i >= bills.length) return const SizedBox.shrink();
                        return Text(
                          bills[i].billMonth.month.toString(),
                          style: const TextStyle(fontSize: 10,
                              color: AppColors.textSecondary),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Bill Tile ──────────────────────────────────────────────────────────────

class _BillTile extends StatelessWidget {
  final Bill bill;
  const _BillTile({required this.bill});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('${AppRoutes.home}/explanation/${bill.id}'),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: bill.isOvercharged
                ? AppColors.error.withOpacity(0.3) : AppColors.divider),
        ),
        child: Row(
          children: [
            // Leading icon
            Container(
              width: 48, height: 48,
              decoration: BoxDecoration(
                color: bill.isOvercharged
                    ? AppColors.errorBackground : AppColors.surfaceVariant,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(
                bill.isOvercharged
                    ? Icons.warning_rounded : Icons.receipt_rounded,
                color: bill.isOvercharged ? AppColors.error : AppColors.primary,
                size: 24,
              ),
            ),
            const SizedBox(width: 14),
            // Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(UrduFormatter.billMonth(bill.billMonth, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
                      style: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur'
                          ? const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.textPrimary)
                          : GoogleFonts.outfit(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.textPrimary)),
                  const SizedBox(height: 4),
                  Text('${Provider.of<LanguageProvider>(context).translate('app_title')} • ${UrduFormatter.units(bill.unitsConsumed, locale: Provider.of<LanguageProvider>(context).currentLanguageCode)}',
                      style: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur'
                          ? const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 13, color: AppColors.textSecondary)
                          : GoogleFonts.outfit(fontSize: 13, color: AppColors.textSecondary)),
                ],
              ),
            ),
            const SizedBox(width: 12),
            // Amount
            Text(UrduFormatter.pkr(bill.totalAmount, locale: Provider.of<LanguageProvider>(context).currentLanguageCode),
                style: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur'
                    ? const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.textPrimary)
                    : GoogleFonts.outfit(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.textPrimary)),
          ],
        ),
      ),
    );
  }
}

// ─── Stat Card ──────────────────────────────────────────────────────────────

class _StatCard extends StatelessWidget {
  final String label, value;
  final IconData icon;
  final Color color;
  const _StatCard({required this.label, required this.value,
      required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(value, style: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur'
                    ? TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 16, fontWeight: FontWeight.w700, color: color)
                    : GoogleFonts.outfit(fontSize: 16, fontWeight: FontWeight.w700, color: color)),
                const SizedBox(height: 2),
                Text(label, style: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur'
                    ? const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 12, color: AppColors.textSecondary)
                    : GoogleFonts.outfit(fontSize: 12, color: AppColors.textSecondary)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.surfaceVariant,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.receipt_long_rounded, size: 64, color: AppColors.textHint),
            ),
            const SizedBox(height: 24),
            Text(Provider.of<LanguageProvider>(context).translate('historyEmpty'),
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                    fontSize: 18, color: AppColors.textHint, height: 1.5)),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () => context.go('${AppRoutes.home}/scan'),
              icon: const Icon(Icons.add_a_photo_rounded),
              label: Text(Provider.of<LanguageProvider>(context).translate('homeScanButton')),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: TextStyle(
                  fontFamily: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                  fontSize: 16,
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
