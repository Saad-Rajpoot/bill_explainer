import 'dart:io';
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
import '../../blocs/bill_explain/bill_explain_bloc.dart';
import '../../blocs/bill_explain/bill_explain_event.dart';
import '../../blocs/bill_explain/bill_explain_state.dart';
import 'package:provider/provider.dart';
import '../../../language/language_provider.dart';

class BillExplanationPage extends StatelessWidget {
  final String billId;
  const BillExplanationPage({super.key, required this.billId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          sl<BillExplainBloc>()..add(BillExplainRequested(billId: billId)),
      child: const _ExplainView(),
    );
  }
}

class _ExplainView extends StatelessWidget {
  const _ExplainView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocBuilder<BillExplainBloc, BillExplainState>(
        builder: (context, state) {
          if (state is BillExplainLoading) return _LoadingView();
          if (state is BillExplainFailure)
            return _FailView(msg: state.messageUrdu);
          if (state is BillExplainLoaded) return _LoadedView(state: state);
          return _LoadingView();
        },
      ),
    );
  }
}

class _LoadedView extends StatelessWidget {
  final BillExplainLoaded state;
  const _LoadedView({required this.state});

  @override
  Widget build(BuildContext context) {
    final lp = Provider.of<LanguageProvider>(context);
    final bill = state.explanation.bill;
    final isOvercharged = bill.isOvercharged;

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 260,
          pinned: true,
          stretch: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
            onPressed: () => context.go(AppRoutes.home),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                if (bill.imagePath != null &&
                    File(bill.imagePath!).existsSync())
                  Image.file(File(bill.imagePath!), fit: BoxFit.cover)
                else
                  Container(
                    decoration: BoxDecoration(
                      gradient: isOvercharged
                          ? AppColors.errorGradient
                          : AppColors.primaryGradient,
                    ),
                  ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.9)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                        Text(Provider.of<LanguageProvider>(context).translate('app_tagline'),
                            style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2)),
                        const SizedBox(height: 8),
                        Text(UrduFormatter.pkr(bill.totalAmount),
                            style: const TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 52,
                                fontWeight: FontWeight.w900,
                                color: Colors.white)),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: isOvercharged
                                    ? Colors.red.withOpacity(0.3)
                                    : Colors.green.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.white24),
                              ),
                              child: Text(isOvercharged 
                                  ? Provider.of<LanguageProvider>(context).translate('statusOvercharged')
                                  : Provider.of<LanguageProvider>(context).translate('statusNormal'),
                                  style: TextStyle(
                                      fontFamily: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              if (isOvercharged) ...[
                _OverchargeAlertCard(bill: bill)
                    .animate()
                    .fadeIn()
                    .slideY(begin: -0.1),
                const SizedBox(height: 24),
              ],

               _SectionHeader(title: Provider.of<LanguageProvider>(context).translate('explainBreakdown')),

              _BoxCard(
                title: '📦 ${lp.translate('box_1_title')}',
                accentColor: Colors.blue,
                summary: lp.translate('explain_box_1_summary'),
                glossary: [
                  _GlossaryItem(lp.translate('label_conn_date'), lp.translate('explain_conn_date')),
                  _GlossaryItem(lp.translate('label_conn_load'), lp.translate('explain_conn_load')),
                  _GlossaryItem(lp.translate('label_edo'), lp.translate('explain_edo')),
                  _GlossaryItem(lp.translate('month_label'), lp.translate('explain_bill_month')),
                  _GlossaryItem(lp.translate('label_reading_date'), lp.translate('explain_reading_date')),
                  _GlossaryItem(lp.translate('label_issue_date'), lp.translate('explain_issue_date')),
                  _GlossaryItem(lp.translate('label_due_date'), lp.translate('explain_due_date')),
                ],
                rows: [
                  _Row(label: lp.translate('label_conn_date'), value: bill.connectionDate),
                  _Row(label: lp.translate('label_conn_load'), value: bill.connectedLoad),
                  _Row(label: lp.translate('label_edo'), value: bill.edo),
                  _Row(
                      label: lp.translate('month_label'),
                      value: UrduFormatter.billMonth(bill.billMonth, locale: lp.currentLanguageCode)),
                  _Row(label: lp.translate('label_reading_date'), value: bill.readingDate),
                  _Row(label: lp.translate('label_issue_date'), value: bill.issueDate),
                  _Row(
                      label: lp.translate('label_due_date'),
                      value: UrduFormatter.dueDateWithRemaining(bill.dueDate, locale: lp.currentLanguageCode)),
                ],
              ).animate().fadeIn().slideY(begin: 0.1),

              _BoxCard(
                title: '📦 ${lp.translate('box_2_title')}',
                accentColor: Colors.indigo,
                summary: lp.translate('explain_box_2_summary'),
                glossary: [
                  _GlossaryItem(lp.translate('label_consumer_id'), lp.translate('explain_consumer_id')),
                  _GlossaryItem(lp.translate('label_tariff'), lp.translate('explain_tariff')),
                  _GlossaryItem(lp.translate('label_load'), lp.translate('explain_load')),
                  _GlossaryItem(lp.translate('label_old_ac'), lp.translate('explain_old_ac')),
                  _GlossaryItem(lp.translate('label_division'), lp.translate('explain_division')),
                  _GlossaryItem(lp.translate('label_sub_division'), lp.translate('explain_sub_division')),
                  _GlossaryItem(lp.translate('label_ref_no'), lp.translate('explain_reference')),
                  _GlossaryItem(lp.translate('label_lock_age'), lp.translate('explain_lock_age')),
                  _GlossaryItem(lp.translate('label_unbill_age'), lp.translate('explain_unbill_age')),
                  _GlossaryItem(lp.translate('label_feeder'), lp.translate('explain_feeder')),
                ],
                rows: [
                  _Row(label: lp.translate('label_consumer_id'), value: bill.consumerNumber),
                  _Row(label: lp.translate('label_tariff'), value: bill.tariff),
                  _Row(label: lp.translate('label_load'), value: bill.load?.toString()),
                  _Row(label: lp.translate('label_old_ac'), value: bill.oldAccountNumber),
                  _Row(label: lp.translate('label_division'), value: bill.division),
                  _Row(label: lp.translate('label_sub_division'), value: bill.subDivision),
                  _Row(label: lp.translate('label_ref_no'), value: bill.referenceNumber),
                  _Row(label: lp.translate('label_lock_age'), value: bill.lockAge),
                  _Row(label: lp.translate('label_no_act'), value: bill.noOfAct),
                  _Row(label: lp.translate('label_unbill_age'), value: bill.unBillAge),
                  _Row(label: lp.translate('label_feeder'), value: bill.feederName),
                  _Row(label: lp.translate('label_iesco_gst'), value: bill.iescoGstNo),
                ],
              ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.1),

              _BoxCard(
                title: '📦 ${lp.translate('box_3_title')}',
                accentColor: Colors.teal,
                summary: lp.translate('explain_box_3_summary'),
                glossary: [
                  _GlossaryItem(lp.translate('label_name'), 'User name as per IESCO records'),
                  _GlossaryItem(lp.translate('label_plot'), lp.translate('explain_plot')),
                  _GlossaryItem(lp.translate('label_area'), lp.translate('explain_area')),
                ],
                rows: [
                  _Row(label: lp.translate('label_name'), value: bill.name),
                  _Row(label: lp.translate('label_so'), value: bill.sonOf),
                  _Row(label: lp.translate('label_plot'), value: bill.plotNo),
                  _Row(label: lp.translate('label_st'), value: bill.stNo),
                  _Row(label: lp.translate('label_block'), value: bill.block),
                  _Row(label: lp.translate('label_area'), value: bill.area),
                ],
              ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.1),

              // 📦 BOX 4 - Payment History
              _PaymentHistoryCard(history: bill.paymentHistory)
                  .animate(delay: 300.ms)
                  .fadeIn()
                  .slideY(begin: 0.1),

              _BoxCard(
                title: '📦 ${lp.translate('box_5_title')}',
                accentColor: Colors.orange,
                summary: lp.translate('explain_box_5_summary'),
                glossary: [
                  _GlossaryItem(lp.translate('label_meter_no'), lp.translate('explain_meter_no')),
                  _GlossaryItem(lp.translate('label_prev_reading'), lp.translate('explain_reading')),
                  _GlossaryItem(lp.translate('label_mf'), lp.translate('explain_mf')),
                  _GlossaryItem(lp.translate('units_label'), 'Total electricity units used this month'),
                  _GlossaryItem(lp.translate('status'), lp.translate('explain_status')),
                ],
                rows: [
                  _Row(label: lp.translate('label_meter_no'), value: bill.meterNo),
                  _Row(
                      label: lp.translate('label_prev_reading'),
                      value: bill.previousReading?.toString()),
                  _Row(
                      label: lp.translate('label_pres_reading'),
                      value: bill.presentReading?.toString()),
                  _Row(label: lp.translate('label_mf'), value: bill.mf?.toString()),
                  _Row(label: lp.translate('units_label'), value: bill.unitsConsumed.toString()),
                  _Row(label: lp.translate('status'), value: bill.status),
                ],
              ).animate(delay: 400.ms).fadeIn().slideY(begin: 0.1),

              _BoxCard(
                title: '📦 ${lp.translate('box_6_title')}',
                accentColor: Colors.deepPurple,
                summary: lp.translate('explain_box_6_summary'),
                glossary: bill.charges.where((c) => ['cost_of_electricity', 'meter_rent_fix_charges', 'service_rent', 'fuel_price_adjustment', 'fc_surcharge', 'qtr_tariff_adj'].contains(c.id)).map((c) => 
                  _GlossaryItem(lp.translate(c.nameKey), lp.translate(c.explanationKey))
                ).toList(),
                rows: bill.charges.where((c) => ['cost_of_electricity', 'meter_rent_fix_charges', 'service_rent', 'fuel_price_adjustment', 'fc_surcharge', 'qtr_tariff_adj'].contains(c.id)).map((c) => 
                  _Row(
                    label: lp.translate(c.nameKey), 
                    value: UrduFormatter.pkr(c.amount),
                  )
                ).toList()..add(_Row(label: lp.translate('historyAmount'), value: UrduFormatter.pkr(bill.totalIescoCharges), isTotal: true)),
              ).animate(delay: 500.ms).fadeIn().slideY(begin: 0.1),

              _BoxCard(
                title: '📦 ${lp.translate('box_7_title')}',
                accentColor: Colors.brown,
                summary: lp.translate('explain_box_7_summary'),
                glossary: bill.charges.where((c) => ['ed', 'tv', 'gst', 'income_tax', 'extra_tax', 'further_tax', 'retailer_tax', 'gst_fpa', 'ed_fpa', 'total_tax_fpa'].contains(c.id)).map((c) => 
                  _GlossaryItem(lp.translate(c.nameKey), lp.translate(c.explanationKey))
                ).toList(),
                rows: bill.charges.where((c) => ['ed', 'tv', 'gst', 'income_tax', 'extra_tax', 'further_tax', 'retailer_tax', 'gst_fpa', 'ed_fpa', 'total_tax_fpa'].contains(c.id)).map((c) => 
                  _Row(
                    label: lp.translate(c.nameKey), 
                    value: UrduFormatter.pkr(c.amount),
                  )
                ).toList()..add(_Row(label: lp.translate('historyAmount'), value: UrduFormatter.pkr(bill.totalGovtCharges), isTotal: true)),
              ).animate(delay: 600.ms).fadeIn().slideY(begin: 0.1),

              _BoxCard(
                title: '📦 ${lp.translate('box_8_title')}',
                accentColor: Colors.red,
                summary: lp.translate('explain_box_8_summary'),
                glossary: [
                  _GlossaryItem(lp.translate('label_arrears'), lp.translate('explain_arrears')),
                  _GlossaryItem(lp.translate('label_current_bill'), lp.translate('explain_current_bill')),
                  _GlossaryItem(lp.translate('label_bill_adj'), lp.translate('explain_bill_adj')),
                  _GlossaryItem(lp.translate('label_installment'), lp.translate('explain_installment')),
                  _GlossaryItem(lp.translate('label_subsidies'), lp.translate('explain_subsidies')),
                  _GlossaryItem(lp.translate('label_total_fpa'), lp.translate('explain_total_fpa')),
                  _GlossaryItem(lp.translate('label_lp_surcharge'), lp.translate('explain_lp_surcharge')),
                  _GlossaryItem(lp.translate('label_payable_after'), lp.translate('explain_payable_after')),
                ],
                rows: [
                  _Row(label: lp.translate('label_arrears'), value: UrduFormatter.pkr(bill.arrears ?? 0)),
                  _Row(label: lp.translate('label_current_bill'), value: UrduFormatter.pkr(bill.currentBill ?? 0)),
                  _Row(label: lp.translate('label_bill_adj'), value: UrduFormatter.pkr(bill.billAdjustment ?? 0)),
                  _Row(label: lp.translate('label_installment'), value: UrduFormatter.pkr(bill.installment ?? 0)),
                  _Row(label: lp.translate('label_subsidies'), value: UrduFormatter.pkr(bill.subsidies ?? 0)),
                  _Row(label: lp.translate('label_total_fpa'), value: UrduFormatter.pkr(bill.totalFpa ?? 0)),
                  _Row(label: lp.translate('label_payable_due'), value: UrduFormatter.pkr(bill.totalAmount), isTotal: true),
                  _Row(label: lp.translate('label_lp_surcharge'), value: UrduFormatter.pkr(bill.lpSurcharge ?? 0)),
                  _Row(label: lp.translate('label_payable_after'), value: bill.payableAfterDueDate, isTotal: true),
                ],
              ).animate(delay: 700.ms).fadeIn().slideY(begin: 0.1),


              const SizedBox(height: 32),

              _BoxCard(
                title: '📦 ${lp.translate('box_9_title')}',
                accentColor: Colors.cyan,
                summary: lp.translate('explain_box_9_summary'),
                glossary: [
                  _GlossaryItem(lp.translate('label_gop_tariff'), lp.translate('explain_gop_tariff')),
                  _GlossaryItem(lp.translate('units_label'), 'Total units consumed'),
                  _GlossaryItem(lp.translate('label_calculation'), 'Mathematical formula: Units x Rate'),
                ],
                rows: [
                  _Row(
                      label: lp.translate('label_gop_tariff'),
                      value: bill.gopTariff?.toStringAsFixed(4)),
                  _Row(label: lp.translate('units_label'), value: bill.unitsConsumed.toString()),
                  _Row(
                      label: lp.translate('label_calculation'),
                      value: '${bill.gopTariff} x ${bill.unitsConsumed}'),
                ],
              ).animate(delay: 800.ms).fadeIn().slideY(begin: 0.1),

              _BoxCard(
                title: '📦 ${lp.translate('box_10_title')}',
                accentColor: Colors.pink,
                summary: lp.translate('explain_box_10_summary'),
                glossary: [
                  _GlossaryItem(lp.translate('label_ref_no'), lp.translate('explain_reference')),
                  _GlossaryItem(lp.translate('label_complaints'), lp.translate('explain_complaints')),
                  _GlossaryItem(lp.translate('label_sms'), lp.translate('explain_sms')),
                ],
                rows: [
                  _Row(label: lp.translate('label_ref_no'), value: bill.textReferenceTo),
                  _Row(label: lp.translate('label_call'), value: bill.orCall),
                  _Row(label: lp.translate('label_feeder'), value: bill.centerName),
                  _Row(label: lp.translate('label_complaints'), value: bill.complaintsDial),
                  _Row(label: lp.translate('label_sms'), value: bill.sms),
                ],
              ).animate(delay: 900.ms).fadeIn().slideY(begin: 0.1),

              const SizedBox(height: 60),
            ]),
          ),
        ),
      ],
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          const Expanded(child: Divider()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(title,
                style: TextStyle(
                    fontFamily: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: AppColors.textSecondary,
                    fontSize: 12)),
          ),
          const Expanded(child: Divider()),
        ],
      ),
    );
  }
}

class _GlossaryItem {
  final String key;
  final String definition;
  const _GlossaryItem(this.key, this.definition);
}

class _BoxCard extends StatelessWidget {
  final String title;
  final Color accentColor;
  final List<Widget> rows;
  final String? summary;
  final List<_GlossaryItem> glossary;

  const _BoxCard({
    required this.title,
    required this.accentColor,
    required this.rows,
    this.summary,
    this.glossary = const [],
  });

  @override
  Widget build(BuildContext context) {
    final lp = Provider.of<LanguageProvider>(context);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: accentColor.withOpacity(0.1)),
        boxShadow: [
          BoxShadow(
              color: accentColor.withOpacity(0.05),
              blurRadius: 30,
              offset: const Offset(0, 10)),
        ],
      ),
      child: Column(
        children: [
          InkWell(
            onTap: (summary == null && glossary.isEmpty) ? null : () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) => DraggableScrollableSheet(
                  initialChildSize: 0.6,
                  maxChildSize: 0.9,
                  minChildSize: 0.4,
                  builder: (context, scrollController) => Container(
                    padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
                    decoration: const BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                    ),
                    child: ListView(
                      controller: scrollController,
                      children: [
                        Center(child: Container(width: 40, height: 4, decoration: BoxDecoration(color: AppColors.divider, borderRadius: BorderRadius.circular(2)))),
                        const SizedBox(height: 24),
                        Text(title, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24, color: accentColor)),
                        if (summary != null) ...[
                          const SizedBox(height: 16),
                          Text(summary!, textAlign: TextAlign.center, style: TextStyle(
                            fontFamily: lp.currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                            fontSize: 16, height: 1.6, color: AppColors.textPrimary.withOpacity(0.8))),
                        ],
                        const SizedBox(height: 24),
                        const Divider(),
                        const SizedBox(height: 16),
                        ...glossary.map((item) => Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.key, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16, color: accentColor, fontFamily: lp.currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto')),
                              const SizedBox(height: 4),
                              Text(item.definition, style: TextStyle(
                                fontSize: 14, 
                                height: 1.5,
                                color: AppColors.textSecondary,
                                fontFamily: lp.currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto')),
                            ],
                          ),
                        )),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              );
            },
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: accentColor.withOpacity(0.08),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: Row(
                children: [
                  Container(
                      width: 4,
                      height: 16,
                      decoration: BoxDecoration(
                          color: accentColor,
                          borderRadius: BorderRadius.circular(2))),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(title,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                            color: accentColor,
                            letterSpacing: 0.5)),
                  ),
                  if (summary != null || glossary.isNotEmpty)
                    Icon(Icons.auto_awesome_rounded, size: 18, color: accentColor),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: rows),
          ),
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final String label;
  final String? value;
  final bool isTotal;
  final String? explanation;

  const _Row({required this.label, this.value, this.isTotal = false, this.explanation});

  @override
  Widget build(BuildContext context) {
    final lp = Provider.of<LanguageProvider>(context);
    final displayValue =
        (value == null || value!.isEmpty || value == 'null') ? lp.translate('no_value') : value!;
        
    return InkWell(
      onTap: explanation == null ? null : () {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          builder: (context) => Container(
            padding: const EdgeInsets.all(32),
            decoration: const BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(width: 40, height: 4, decoration: BoxDecoration(color: AppColors.divider, borderRadius: BorderRadius.circular(2))),
                const SizedBox(height: 24),
                Text(label, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 20, color: AppColors.primary)),
                const SizedBox(height: 16),
                Text(explanation!, textAlign: TextAlign.center, style: TextStyle(
                  fontFamily: lp.currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                  fontSize: 16, height: 1.6, color: AppColors.textPrimary)),
                const SizedBox(height: 32),
              ],
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: lp.currentLanguageCode == 'ur' ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      if (explanation != null) ...[
                        Icon(Icons.info_outline_rounded, size: 14, color: AppColors.primary.withOpacity(0.5)),
                        const SizedBox(width: 6),
                      ],
                      Flexible(
                        child: Text(label,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontFamily: lp.currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                                color: AppColors.textSecondary,
                                fontSize: 14,
                                fontWeight: isTotal ? FontWeight.w900 : FontWeight.w500)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Flexible(
                    child: Text(displayValue,
                        textAlign: lp.currentLanguageCode == 'ur' ? TextAlign.left : TextAlign.right,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                            fontSize: isTotal ? 18 : 15,
                            color: isTotal
                                ? AppColors.primary
                                : AppColors.textPrimary))),
              ],
            ),
            if (isTotal)
              const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Divider(thickness: 1.5)),
          ],
        ),
      ),
    );
  }
}

class _PaymentHistoryCard extends StatelessWidget {
  final List<PaymentHistoryEntry> history;
  const _PaymentHistoryCard({required this.history});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.amber.withOpacity(0.05),
              blurRadius: 30,
              offset: const Offset(0, 10))
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.08),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(24))),
            child: Row(
              children: [
                Container(
                    width: 4,
                    height: 16,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(2))),
                const SizedBox(width: 12),
                Text('📦 ${Provider.of<LanguageProvider>(context).translate('box_4_title')}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                        color: Colors.amber,
                        letterSpacing: 0.5)),
              ],
            ),
          ),
          if (history.isEmpty)
            const Padding(
                padding: EdgeInsets.all(24),
                child: Text('پیمنٹ کی تفصیلات موجود نہیں ہیں',
                    style: TextStyle(
                        fontFamily: 'NotoNastaliqUrdu',
                        color: AppColors.textSecondary)))
          else
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: DataTable(
                  columnSpacing: 24,
                  headingRowHeight: 40,
                  columns: [
                    DataColumn(
                        label: Text(Provider.of<LanguageProvider>(context).translate('month_label'),
                            style: const TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text(Provider.of<LanguageProvider>(context).translate('units_label'),
                            style: const TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text(Provider.of<LanguageProvider>(context).translate('bill_label'),
                            style: const TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text(Provider.of<LanguageProvider>(context).translate('payment_label'),
                            style: const TextStyle(fontWeight: FontWeight.bold))),
                  ],
                  rows: history
                      .map((e) => DataRow(cells: [
                            DataCell(Text(e.month)),
                            DataCell(Text(e.units)),
                            DataCell(Text(UrduFormatter.pkr(e.bill))),
                            DataCell(Text(UrduFormatter.pkr(e.payment))),
                          ]))
                      .toList(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _OverchargeAlertCard extends StatelessWidget {
  final Bill bill;
  const _OverchargeAlertCard({required this.bill});
  @override
  Widget build(BuildContext context) {
    final lp = Provider.of<LanguageProvider>(context);
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          gradient: AppColors.errorGradient,
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: lp.currentLanguageCode == 'ur' ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: lp.currentLanguageCode == 'ur' ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              if (lp.currentLanguageCode != 'ur') const Icon(Icons.warning_rounded, color: Colors.white, size: 28),
              if (lp.currentLanguageCode != 'ur') const SizedBox(width: 12),
              Text(lp.translate('overchargeAlertTitle'),
                  style: TextStyle(
                      fontFamily: lp.currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white)),
              if (lp.currentLanguageCode == 'ur') const SizedBox(width: 12),
              if (lp.currentLanguageCode == 'ur') const Icon(Icons.warning_rounded, color: Colors.white, size: 28),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              _AmountBox(
                  label: lp.translate('overchargeCharged'),
                  amount: bill.totalAmount,
                  color: Colors.white.withOpacity(0.2)),
              const SizedBox(width: 8),
              _AmountBox(
                  label: lp.translate('overchargeExpected'),
                  amount: bill.expectedAmount,
                  color: Colors.white.withOpacity(0.1)),
              const SizedBox(width: 8),
              _AmountBox(
                  label: lp.translate('overchargeDiff'),
                  amount: bill.overchargeAmount,
                  color: Colors.white.withOpacity(0.3)),
            ],
          ),
        ],
      ),
    );
  }
}

class _AmountBox extends StatelessWidget {
  final String label;
  final double amount;
  final Color color;

  const _AmountBox({
    required this.label,
    required this.amount,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final lp = Provider.of<LanguageProvider>(context);
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Text(UrduFormatter.pkr(amount),
                style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: Colors.white)),
            const SizedBox(height: 4),
            Text(label,
                style: TextStyle(
                    fontFamily: lp.currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                    fontSize: 10,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const CircularProgressIndicator(color: AppColors.primary, strokeWidth: 4),
        const SizedBox(height: 32),
        Text(Provider.of<LanguageProvider>(context).translate('loading_message'),
            style: const TextStyle(
                fontSize: 22,
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w700))
      ]));
}

class _FailView extends StatelessWidget {
  final String msg;
  const _FailView({required this.msg});
  @override
  Widget build(BuildContext context) => Center(
      child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(Icons.error_outline_rounded,
                size: 80, color: AppColors.error),
            const SizedBox(height: 32),
            Text(msg,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'NotoNastaliqUrdu',
                    fontSize: 20,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w700)),
            const SizedBox(height: 40),
            ElevatedButton(
                onPressed: () => context.go(AppRoutes.home),
                child: Text(Provider.of<LanguageProvider>(context).translate('error_message')))
          ])));
}
