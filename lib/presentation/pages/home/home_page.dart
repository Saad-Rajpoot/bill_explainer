import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/router/app_router.dart';
import '../../../injection_container.dart';
import '../../blocs/bill_history/bill_history_bloc.dart';
import '../../blocs/bill_history/bill_history_bloc_impl.dart';

import '../../../core/utils/urdu_formatter.dart';
import '../../../domain/entities/bill.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<BillHistoryBlocImpl>()
          ..add(const BillHistoryLoadRequested())),
      ],
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(AppStrings.homeGreeting,
                        style: const TextStyle(fontFamily: 'NotoNastaliqUrdu',
                            fontSize: 16, color: Colors.white70)),
                    const Text('بجلی سمجھو',
                        style: TextStyle(fontFamily: 'NotoNastaliqUrdu',
                            fontSize: 28, fontWeight: FontWeight.w700,
                            color: Colors.white)),
                  ],
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings_rounded, color: Colors.white),
                onPressed: () => context.go('${AppRoutes.home}/settings'),
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
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.document_scanner_rounded, size: 56, color: Colors.white),
            SizedBox(height: 12),
            Text(AppStrings.homeScanButton,
                style: TextStyle(fontFamily: 'NotoNastaliqUrdu',
                    fontSize: 24, fontWeight: FontWeight.w700,
                    color: Colors.white)),
            SizedBox(height: 4),
            Text(AppStrings.scanTip,
                style: TextStyle(fontFamily: 'NotoNastaliqUrdu',
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
    return GestureDetector(
      onTap: () => context.go('${AppRoutes.home}/explanation/${bill.id}'),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: bill.isOvercharged ? AppColors.error.withOpacity(0.3)
                  : AppColors.divider),
          boxShadow: AppColors.cardShadow,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: bill.isOvercharged
                        ? AppColors.errorBackground : AppColors.successBackground,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    bill.isOvercharged
                        ? AppStrings.statusOvercharged : AppStrings.statusNormal,
                    style: TextStyle(
                        fontFamily: 'NotoNastaliqUrdu', fontSize: 13,
                        color: bill.isOvercharged
                            ? AppColors.error : AppColors.success,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Text(AppStrings.homeLastBill,
                    style: const TextStyle(fontFamily: 'NotoNastaliqUrdu',
                        fontSize: 14, color: AppColors.textSecondary)),
              ],
            ),
            const SizedBox(height: 16),
            Text(UrduFormatter.pkr(bill.totalAmount),
                style: const TextStyle(fontFamily: 'Roboto', fontSize: 32,
                    fontWeight: FontWeight.w700, color: AppColors.textPrimary)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(width: 16),
                Text(bill.discoName,
                    style: const TextStyle(fontFamily: 'Roboto', fontSize: 14,
                        color: AppColors.textSecondary)),
                const SizedBox(width: 8),
                Text('•', style: TextStyle(color: AppColors.textHint)),
                const SizedBox(width: 8),
                Text(UrduFormatter.units(bill.unitsConsumed),
                    style: const TextStyle(fontFamily: 'NotoNastaliqUrdu',
                        fontSize: 15, color: AppColors.textSecondary)),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'آخری تاریخ: ${UrduFormatter.dueDateWithRemaining(bill.dueDate)}',
              style: TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 13,
                  color: bill.isPastDue ? AppColors.error : AppColors.textHint),
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
          Icon(Icons.receipt_long_rounded, size: 48, color: AppColors.textHint),
          const SizedBox(height: 12),
          const Text(AppStrings.homeNoBill,
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'NotoNastaliqUrdu',
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
          icon: Icons.history_rounded, label: AppStrings.homeViewHistory,
          color: AppColors.primary,
          onTap: () => context.go('${AppRoutes.home}/history'),
        )),
        const SizedBox(width: 12),
        Expanded(child: _ActionCard(
          icon: Icons.compare_arrows_rounded, label: AppStrings.homeCompare,
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
                style: TextStyle(fontFamily: 'NotoNastaliqUrdu',
                    fontSize: 14, color: color, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
