import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:provider/provider.dart';
import '../../../language/language_provider.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/utils/tariff_calculator.dart';
import '../../../core/utils/urdu_formatter.dart';
import '../../../domain/entities/bill_charge.dart';

/// Expandable card showing one charge line with Urdu explanation.
/// Traffic-light color on the left border indicates charge status.
class ChargeCardWidget extends StatelessWidget {
  final BillCharge charge;
  final bool isExpanded;
  final VoidCallback onToggle;

  const ChargeCardWidget({
    super.key,
    required this.charge,
    required this.isExpanded,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final statusColor = _statusColor(charge.status);
    final lp = Provider.of<LanguageProvider>(context);

    return GestureDetector(
      onTap: onToggle,
      child: AnimatedContainer(
        duration: 300.ms,
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.divider),
          boxShadow: isExpanded ? AppColors.cardShadow : [],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            decoration: BoxDecoration(
              border: Border(right: BorderSide(color: statusColor, width: 4)),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                        // Header row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Amount + status badge
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(UrduFormatter.pkr(charge.amount, locale: lp.currentLanguageCode),
                                    style: const TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.textPrimary)),
                                if (charge.expectedAmount != null &&
                                    charge.isOvercharged)
                                  Text(
                                    'متوقع: ${UrduFormatter.pkr(charge.expectedAmount!, locale: lp.currentLanguageCode)}',
                                    style: const TextStyle(
                                        fontFamily: 'NotoNastaliqUrdu',
                                        fontSize: 12,
                                        color: AppColors.error),
                                  ),
                              ],
                            ),
                            // Charge name + status chip
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(charge.nameUrdu,
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                        fontFamily: 'NotoNastaliqUrdu',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.textPrimary)),
                                const SizedBox(height: 4),
                                _StatusChip(status: charge.status),
                              ],
                            ),
                          ],
                        ),

                        // ─── Expandable explanation ────────────────
                        AnimatedCrossFade(
                          firstChild: const SizedBox.shrink(),
                          secondChild: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Divider(height: 24),
                              Text(
                                charge.explanationUrdu,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                    fontFamily: 'NotoNastaliqUrdu',
                                    fontSize: 14,
                                    color: AppColors.textSecondary,
                                    height: 1.7),
                              ),
                              if (charge.isOvercharged)
                                _OverchargeRow(charge: charge),
                            ],
                          ),
                          crossFadeState: isExpanded
                              ? CrossFadeState.showSecond
                              : CrossFadeState.showFirst,
                          duration: 250.ms,
                        ),

                        // Toggle indicator
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            isExpanded
                                ? Icons.keyboard_arrow_up_rounded
                                : Icons.keyboard_arrow_down_rounded,
                            color: AppColors.textHint,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
          ),
        ),
      ),
    );
  }

  static Color _statusColor(ChargeStatus s) {
    return switch (s) {
      ChargeStatus.normal => AppColors.success,
      ChargeStatus.high => AppColors.warning,
      ChargeStatus.overcharged => AppColors.error,
    };
  }
}

class _StatusChip extends StatelessWidget {
  final ChargeStatus status;
  const _StatusChip({required this.status});

  @override
  Widget build(BuildContext context) {
    final (label, bg, fg) = switch (status) {
      ChargeStatus.normal => (AppStrings.statusNormal,
          AppColors.successBackground, AppColors.success),
      ChargeStatus.high => (AppStrings.statusHigh,
          AppColors.warningBackground, AppColors.warning),
      ChargeStatus.overcharged => (AppStrings.statusOvercharged,
          AppColors.errorBackground, AppColors.error),
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
          color: bg, borderRadius: BorderRadius.circular(20)),
      child: Text(label,
          style: TextStyle(fontFamily: 'NotoNastaliqUrdu',
              fontSize: 12, color: fg, fontWeight: FontWeight.w600)),
    );
  }
}

class _OverchargeRow extends StatelessWidget {
  final BillCharge charge;
  const _OverchargeRow({required this.charge});

  @override
  Widget build(BuildContext context) {
    final lp = Provider.of<LanguageProvider>(context);
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.errorBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(UrduFormatter.pkr(charge.overchargeAmount, locale: lp.currentLanguageCode),
              style: const TextStyle(fontFamily: 'Roboto', fontSize: 16,
                  fontWeight: FontWeight.w700, color: AppColors.error)),
          const Text('زیادہ وصول کیا گیا',
              style: TextStyle(fontFamily: 'NotoNastaliqUrdu',
                  fontSize: 13, color: AppColors.error)),
        ],
      ),
    );
  }
}
