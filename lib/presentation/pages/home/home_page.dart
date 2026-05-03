import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_colors.dart';
import '../../../language/language_provider.dart';
import 'package:provider/provider.dart';
import '../../../core/router/app_router.dart';
import '../../blocs/bill_history/bill_history_bloc.dart';
import '../../blocs/bill_history/bill_history_bloc_impl.dart';
import '../../widgets/language_bottom_sheet.dart';

import '../../../core/utils/urdu_formatter.dart';
import '../../../domain/entities/bill.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HomeView();
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          // ─── Header ─────────────────────────────────────────────
          SliverAppBar(
            expandedHeight: 140,
            pinned: true,
            backgroundColor: AppColors.primary,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(gradient: AppColors.primaryGradient),
                padding: const EdgeInsets.fromLTRB(24, 60, 24, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(languageProvider.translate('homeGreeting'),
                        style: TextStyle(fontFamily: languageProvider.currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                            fontSize: 16, color: Colors.white70)),
                    Text(languageProvider.translate('app_title'),
                        style: const TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w700,
                            color: Colors.white)),
                  ],
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings_rounded, color: Colors.white),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (context) => const LanguageBottomSheet(),
                  );
                },
              )
            ],
          ),

          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                // ─── Big Scan Button ──────────────────────────────
                _ScanButton().animate().scale(
                    begin: const Offset(0.9, 0.9), duration: 400.ms,
                    curve: Curves.easeOutBack),
                const SizedBox(height: 24),

                // ─── Last bill summary ────────────────────────────
                BlocBuilder<BillHistoryBlocImpl, BillHistoryState>(
                  builder: (context, state) {
                    if (state is BillHistoryLoaded && state.lastBill != null) {
                      return _LastBillCard(bill: state.lastBill!)
                          .animate(delay: 100.ms).fadeIn().slideY(begin: 0.1);
                    }
                    if (state is BillHistoryEmpty) {
                      return _EmptyBillCard()
                          .animate(delay: 100.ms).fadeIn();
                    }
                    return const SizedBox.shrink();
                  },
                ),
                const SizedBox(height: 16),

                // ─── Quick action row ─────────────────────────────
                _QuickActionsRow().animate(delay: 200.ms).fadeIn().slideY(begin: 0.1),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Big Scan Button ─────────────────────────────────────────────────

class _ScanButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('${AppRoutes.home}/scan'),
      child: Container(
        height: 160,
        decoration: BoxDecoration(
          gradient: AppColors.scanButtonGradient,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(color: AppColors.secondary.withOpacity(0.4),
                blurRadius: 24, offset: const Offset(0, 8)),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.document_scanner_rounded, size: 56, color: Colors.white),
            const SizedBox(height: 12),
            Text(Provider.of<LanguageProvider>(context).translate('homeScanButton'),
                style: TextStyle(fontFamily: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                    fontSize: 24, fontWeight: FontWeight.w700,
                    color: Colors.white)),
            const SizedBox(height: 4),
            Text(Provider.of<LanguageProvider>(context).translate('scanTip'),
                style: TextStyle(fontFamily: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                    fontSize: 13, color: Colors.white70)),
          ],
        ),
      ),
    );
  }
}

// ─── Last bill card ────────────────────────────────────────────────────

class _LastBillCard extends StatelessWidget {
  final Bill bill;
  const _LastBillCard({required this.bill});

  @override
  Widget build(BuildContext context) {
    final lp = Provider.of<LanguageProvider>(context);
    final isUrdu = lp.currentLanguageCode == 'ur';

    return GestureDetector(
      onTap: () => context.go('${AppRoutes.home}/explanation/${bill.id}'),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
              color: bill.isHighBill
                  ? AppColors.secondary.withOpacity(0.3)
                  : AppColors.divider.withOpacity(0.5)),
          boxShadow: AppColors.cardShadow,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: bill.isHighBill
                        ? AppColors.secondary.withOpacity(0.1)
                        : AppColors.successBackground,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    lp.translate(bill.isHighBill ? 'statusHigh' : 'statusNormal'),
                    style: isUrdu
                        ? TextStyle(
                            fontFamily: 'NotoNastaliqUrdu',
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: bill.isHighBill
                                ? AppColors.secondary
                                : AppColors.success)
                        : GoogleFonts.outfit(
                            fontSize: 12,
                            color: bill.isHighBill
                                ? AppColors.secondary
                                : AppColors.success,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.5),
                  ),
                ),
                Text(lp.translate('homeLastBill'),
                    style: isUrdu
                        ? const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textSecondary)
                        : GoogleFonts.outfit(
                            fontSize: 14, 
                            fontWeight: FontWeight.w600,
                            color: AppColors.textSecondary)),
              ],
            ),
            const SizedBox(height: 24),
            Text(UrduFormatter.pkr(bill.totalAmount, locale: lp.currentLanguageCode),
                style: isUrdu
                    ? const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 32, fontWeight: FontWeight.w900, color: AppColors.textPrimary)
                    : GoogleFonts.outfit(
                        fontSize: 36,
                        height: 1,
                        fontWeight: FontWeight.w900, 
                        color: AppColors.textPrimary)),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.flash_on_rounded, size: 16, color: AppColors.primary),
                const SizedBox(width: 8),
                Text(lp.translate('settingsCompany'),
                    style: isUrdu
                        ? const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.textSecondary)
                        : GoogleFonts.outfit(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textSecondary)),
                const SizedBox(width: 12),
                Container(width: 4, height: 4, decoration: const BoxDecoration(color: AppColors.textHint, shape: BoxShape.circle)),
                const SizedBox(width: 12),
                Text(UrduFormatter.units(bill.unitsConsumed, locale: lp.currentLanguageCode),
                    style: isUrdu
                        ? const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textSecondary)
                        : GoogleFonts.outfit(
                            fontSize: 14, 
                            fontWeight: FontWeight.w600,
                            color: AppColors.textSecondary)),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(height: 1),
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.calendar_today_rounded, size: 14, color: bill.isPastDue ? AppColors.error : AppColors.textHint),
                const SizedBox(width: 8),
                Text(
                  '${lp.translate('due_date_prefix')}: ${UrduFormatter.dueDateWithRemaining(bill.dueDate, locale: lp.currentLanguageCode)}',
                  style: isUrdu
                      ? const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.textSecondary)
                      : GoogleFonts.outfit(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: bill.isPastDue ? AppColors.error : AppColors.textSecondary),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyBillCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: [
          const Icon(Icons.receipt_long_rounded, size: 48, color: AppColors.textHint),
          const SizedBox(height: 12),
          Text(Provider.of<LanguageProvider>(context).translate('homeNoBill'),
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                  fontSize: 16, color: AppColors.textHint)),
        ],
      ),
    );
  }
}

// ─── Quick Actions ────────────────────────────────────────────────────

class _QuickActionsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _ActionCard(
          icon: Icons.history_rounded, label: Provider.of<LanguageProvider>(context).translate('homeViewHistory'),
          color: AppColors.primary,
          onTap: () => context.go('${AppRoutes.home}/history'),
        )),
        const SizedBox(width: 12),
        Expanded(child: _ActionCard(
          icon: Icons.compare_arrows_rounded, label: Provider.of<LanguageProvider>(context).translate('homeCompare'),
          color: AppColors.secondary,
          onTap: () => context.go('${AppRoutes.home}/compare'),
        )),
      ],
    );
  }
}

class _ActionCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;
  const _ActionCard({required this.icon, required this.label,
      required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.08),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color.withOpacity(0.2)),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 28),
            const SizedBox(height: 8),
            Text(label, textAlign: TextAlign.center,
                style: TextStyle(fontFamily: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                    fontSize: 14, color: color, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
