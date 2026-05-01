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
import '../../widgets/charge_card_widget.dart';

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
                      const Text('IESCO Digital Explainer',
                          style: TextStyle(
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
                            child: Text(state.explanation.overallStatusUrdu,
                                style: const TextStyle(
                                    fontFamily: 'NotoNastaliqUrdu',
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

              _SectionHeader(title: 'IESCO Bill Standards (10 Boxes)'),

              // 📦 BOX 1 - Connection Info
              _BoxCard(
                title: '📦 BOX 1 - Connection Info',
                accentColor: Colors.blue,
                rows: [
                  _Row(label: 'Connection Date', value: bill.connectionDate),
                  _Row(label: 'Connected Load', value: bill.connectedLoad),
                  _Row(label: 'EDO', value: bill.edo),
                  _Row(
                      label: 'Bill Month',
                      value: UrduFormatter.billMonth(bill.billMonth)),
                  _Row(label: 'Reading Date', value: bill.readingDate),
                  _Row(label: 'Issue Date', value: bill.issueDate),
                  _Row(
                      label: 'Due Date',
                      value: UrduFormatter.dueDateWithRemaining(bill.dueDate)),
                ],
              ).animate().fadeIn().slideY(begin: 0.1),

              // 📦 BOX 2 - Consumer Info
              _BoxCard(
                title: '📦 BOX 2 - Consumer Info',
                accentColor: Colors.indigo,
                rows: [
                  _Row(label: 'Consumer ID', value: bill.consumerNumber),
                  _Row(label: 'Tariff', value: bill.tariff),
                  _Row(label: 'Load', value: bill.load?.toString()),
                  _Row(label: 'Old A/C Number', value: bill.oldAccountNumber),
                  _Row(label: 'Division', value: bill.division),
                  _Row(label: 'Sub Division', value: bill.subDivision),
                  _Row(label: 'Reference No', value: bill.referenceNumber),
                  _Row(label: 'Lock Age', value: bill.lockAge),
                  _Row(label: 'No of ACT', value: bill.noOfAct),
                  _Row(label: 'UN-BILL-AGE', value: bill.unBillAge),
                  _Row(label: 'Feeder Name', value: bill.feederName),
                  _Row(label: 'IESCO GST No', value: bill.iescoGstNo),
                ],
              ).animate(delay: 100.ms).fadeIn().slideY(begin: 0.1),

              // 📦 BOX 3 - Name & Address
              _BoxCard(
                title: '📦 BOX 3 - Name & Address',
                accentColor: Colors.teal,
                rows: [
                  _Row(label: 'Name', value: bill.name),
                  _Row(label: 'S/O', value: bill.sonOf),
                  _Row(label: 'Plot No', value: bill.plotNo),
                  _Row(label: 'ST No', value: bill.stNo),
                  _Row(label: 'Block', value: bill.block),
                  _Row(label: 'Area', value: bill.area),
                ],
              ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.1),

              // 📦 BOX 4 - Payment History
              _PaymentHistoryCard(history: bill.paymentHistory)
                  .animate(delay: 300.ms)
                  .fadeIn()
                  .slideY(begin: 0.1),

              // 📦 BOX 5 - Meter Reading
              _BoxCard(
                title: '📦 BOX 5 - Meter Reading',
                accentColor: Colors.orange,
                rows: [
                  _Row(label: 'Meter No', value: bill.meterNo),
                  _Row(
                      label: 'Previous Reading',
                      value: bill.previousReading?.toString()),
                  _Row(
                      label: 'Present Reading',
                      value: bill.presentReading?.toString()),
                  _Row(label: 'MF', value: bill.mf?.toString()),
                  _Row(label: 'Units', value: bill.unitsConsumed.toString()),
                  _Row(label: 'Status', value: bill.status),
                ],
              ).animate(delay: 400.ms).fadeIn().slideY(begin: 0.1),

              // 📦 BOX 6 - IESCO Charges
              _BoxCard(
                title: '📦 BOX 6 - IESCO Charges',
                accentColor: Colors.deepPurple,
                rows: [
                  _Row(label: 'Units Consumed', value: bill.unitsConsumed.toString()),
                  _Row(label: 'Cost of Electricity', value: UrduFormatter.pkr(bill.costOfElectricity ?? 0)),
                  _Row(label: 'Meter Rent Fix Charges', value: UrduFormatter.pkr(bill.meterRentFixCharges ?? 0)),
                  _Row(label: 'Service Rent', value: UrduFormatter.pkr(bill.serviceRent ?? 0)),
                  _Row(label: 'Fuel Price Adjustment', value: UrduFormatter.pkr(bill.fuelPriceAdjustment ?? 0)),
                  _Row(label: 'F.C Surcharge', value: UrduFormatter.pkr(bill.fcSurcharge ?? 0)),
                  _Row(label: 'QTR Tariff ADJ/DMC', value: UrduFormatter.pkr(bill.qtrTariffAdj ?? 0)),
                  _Row(label: 'Total', value: UrduFormatter.pkr(bill.totalIescoCharges), isTotal: true),
                ],
              ).animate(delay: 500.ms).fadeIn().slideY(begin: 0.1),

              // 📦 BOX 7 - Govt Charges
              _BoxCard(
                title: '📦 BOX 7 - Govt Charges',
                accentColor: Colors.brown,
                rows: [
                  _Row(
                      label: 'Electricity Duty',
                      value: UrduFormatter.pkr(bill.electricityDuty ?? 0)),
                  _Row(label: 'TV Fee', value: UrduFormatter.pkr(bill.tvFee ?? 0)),
                  _Row(label: 'GST', value: UrduFormatter.pkr(bill.gst ?? 0)),
                  _Row(label: 'Income Tax', value: UrduFormatter.pkr(bill.incomeTax ?? 0)),
                  _Row(label: 'Extra Tax', value: UrduFormatter.pkr(bill.extraTax ?? 0)),
                  _Row(label: 'Further Tax', value: UrduFormatter.pkr(bill.furtherTax ?? 0)),
                  _Row(label: 'Retailer STAX', value: UrduFormatter.pkr(bill.retailerStax ?? 0)),
                  _Row(label: 'GST on FPA', value: UrduFormatter.pkr(bill.gstOnFpa ?? 0)),
                  _Row(label: 'ED on FPA', value: UrduFormatter.pkr(bill.edOnFpa ?? 0)),
                  _Row(label: 'Further Tax on FPA', value: UrduFormatter.pkr(bill.furtherTaxOnFpa ?? 0)),
                  _Row(label: 'S.TAX on FPA', value: UrduFormatter.pkr(bill.sTaxOnFpa ?? 0)),
                  _Row(label: 'IT on FPA', value: UrduFormatter.pkr(bill.itOnFpa ?? 0)),
                  _Row(label: 'ET on FPA', value: UrduFormatter.pkr(bill.etOnFpa ?? 0)),
                  _Row(label: 'Total Taxes on FPA', value: UrduFormatter.pkr(bill.totalTaxesOnFpa ?? 0)),
                  _Row(label: 'Total', value: UrduFormatter.pkr(bill.totalGovtCharges), isTotal: true),
                ],
              ).animate(delay: 600.ms).fadeIn().slideY(begin: 0.1),

              // 📦 BOX 8 - Total Charges
              _BoxCard(
                title: '📦 BOX 8 - Total Charges',
                accentColor: Colors.red,
                rows: [
                  _Row(label: 'Arrear/Age', value: UrduFormatter.pkr(bill.arrears ?? 0)),
                  _Row(label: 'Current Bill', value: UrduFormatter.pkr(bill.currentBill ?? 0)),
                  _Row(label: 'Bill Adjustment', value: UrduFormatter.pkr(bill.billAdjustment ?? 0)),
                  _Row(label: 'Installement', value: UrduFormatter.pkr(bill.installment ?? 0)),
                  _Row(label: 'Subsidies', value: UrduFormatter.pkr(bill.subsidies ?? 0)),
                  _Row(label: 'Total FPA', value: UrduFormatter.pkr(bill.totalFpa ?? 0)),
                  _Row(label: 'Payable Within Due Date', value: UrduFormatter.pkr(bill.totalAmount), isTotal: true),
                  _Row(label: 'L.P.Surcharge', value: UrduFormatter.pkr(bill.lpSurcharge ?? 0)),
                  _Row(label: 'Payable After Due Date', value: bill.payableAfterDueDate, isTotal: true),
                ],
              ).animate(delay: 700.ms).fadeIn().slideY(begin: 0.1),


              const SizedBox(height: 32),

              // 📦 BOX 9 - Bill Calculation
              _BoxCard(
                title: '📦 BOX 9 - Bill Calculation',
                accentColor: Colors.cyan,
                rows: [
                  _Row(
                      label: 'GOP Tariff',
                      value: bill.gopTariff?.toStringAsFixed(4)),
                  _Row(label: 'Units', value: bill.unitsConsumed.toString()),
                  _Row(
                      label: 'Calculation',
                      value: '${bill.gopTariff} x ${bill.unitsConsumed}'),
                ],
              ).animate(delay: 800.ms).fadeIn().slideY(begin: 0.1),

              // 📦 BOX 10 - Contact Info
              _BoxCard(
                title: '📦 BOX 10 - Contact Info',
                accentColor: Colors.pink,
                rows: [
                  _Row(label: 'Text Reference No To', value: bill.textReferenceTo),
                  _Row(label: 'Or Call', value: bill.orCall),
                  _Row(label: 'Center Name', value: bill.centerName),
                  _Row(label: 'For Complaints Dial', value: bill.complaintsDial),
                  _Row(label: 'SMS', value: bill.sms),
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
                style: const TextStyle(
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

class _BoxCard extends StatelessWidget {
  final String title;
  final Color accentColor;
  final List<Widget> rows;

  const _BoxCard(
      {required this.title, required this.accentColor, required this.rows});

  @override
  Widget build(BuildContext context) {
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
          Container(
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
                Text(title,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                        color: accentColor,
                        letterSpacing: 0.5)),
              ],
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

  const _Row({required this.label, this.value, this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    final displayValue =
        (value == null || value!.isEmpty || value == 'null') ? '-' : value!;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label,
                  style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 14,
                      fontWeight: isTotal ? FontWeight.w900 : FontWeight.w500)),
              const SizedBox(width: 16),
              Flexible(
                  child: Text(displayValue,
                      textAlign: TextAlign.right,
                      style: TextStyle(
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
                const Text('📦 BOX 4 - Payment History',
                    style: TextStyle(
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
                  columns: const [
                    DataColumn(
                        label: Text('Month',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Units',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Bill',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Payment',
                            style: TextStyle(fontWeight: FontWeight.bold))),
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
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          gradient: AppColors.errorGradient,
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(AppStrings.overchargeAlertTitle,
                  style: TextStyle(
                      fontFamily: 'NotoNastaliqUrdu',
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.white)),
              SizedBox(width: 12),
              Icon(Icons.warning_rounded, color: Colors.white, size: 28),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              _AmountBox(
                  label: 'Charged',
                  amount: bill.totalAmount,
                  color: Colors.white.withOpacity(0.2)),
              const SizedBox(width: 8),
              _AmountBox(
                  label: 'Expected',
                  amount: bill.expectedAmount,
                  color: Colors.white.withOpacity(0.1)),
              const SizedBox(width: 8),
              _AmountBox(
                  label: 'Saved',
                  amount: bill.overchargeAmount,
                  color: Colors.white.withOpacity(0.3)),
            ],
          ),
        ],
      ),
    );
  }
}

class _AmountBox extends Expanded {
  _AmountBox(
      {required String label, required double amount, required Color color})
      : super(
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
                    style: const TextStyle(
                        fontSize: 10,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        );
}

class _LoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircularProgressIndicator(color: AppColors.primary, strokeWidth: 4),
        SizedBox(height: 32),
        Text(AppStrings.loadingAnalyzing,
            style: TextStyle(
                fontFamily: 'NotoNastaliqUrdu',
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
                child: const Text(AppStrings.actionClose))
          ])));
}
