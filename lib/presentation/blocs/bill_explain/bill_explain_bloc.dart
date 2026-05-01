import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'bill_explain_event.dart';
import 'bill_explain_state.dart';
import '../../../domain/usecases/explain_bill_usecase.dart';


class BillExplainBloc extends Bloc<BillExplainEvent, BillExplainState> {
  final ExplainBillUseCase explainBillUseCase;

  BillExplainBloc({required this.explainBillUseCase})
      : super(const BillExplainInitial()) {
    on<BillExplainRequested>(_onExplainRequested);
    on<BillExplainShareRequested>(_onShareRequested);
    on<BillExplainComplaintRequested>(_onComplaintRequested);
    on<BillExplainChargeExpanded>(_onChargeExpanded);
  }

  Future<void> _onExplainRequested(
    BillExplainRequested event,
    Emitter<BillExplainState> emit,
  ) async {
    emit(const BillExplainLoading());
    final result = await explainBillUseCase(
      ExplainBillParams(billId: event.billId),
    );
    result.fold(
      (failure) => emit(BillExplainFailure(messageUrdu: failure.message)),
      (explanation) => emit(BillExplainLoaded(explanation: explanation)),
    );
  }

  Future<void> _onShareRequested(
    BillExplainShareRequested event,
    Emitter<BillExplainState> emit,
  ) async {
    if (state is! BillExplainLoaded) return;
    final loaded = state as BillExplainLoaded;
    final bill = loaded.explanation.bill;

    final text = '''
بجلی سمجھو — بل تجزیہ
صارف نمبر: ${bill.consumerNumber}
بجلی کمپنی: ${bill.discoName}
یونٹ: ${bill.unitsConsumed}
کل رقم: ₨${bill.totalAmount.toStringAsFixed(0)}
حالت: ${loaded.explanation.overallStatusUrdu}
    '''.trim();

    await Share.share(text, subject: 'بجلی بل تجزیہ');
  }

  Future<void> _onComplaintRequested(
    BillExplainComplaintRequested event,
    Emitter<BillExplainState> emit,
  ) async {
    if (state is! BillExplainLoaded) return;
    final loaded = state as BillExplainLoaded;
    final complaint = loaded.explanation.complaintText ?? '';


    // Open WhatsApp with pre-filled complaint text
    final encodedMsg = Uri.encodeComponent(complaint);
    final waUrl = Uri.parse('https://wa.me/?text=$encodedMsg');
    if (await canLaunchUrl(waUrl)) {
      await launchUrl(waUrl, mode: LaunchMode.externalApplication);
    }
  }

  void _onChargeExpanded(
    BillExplainChargeExpanded event,
    Emitter<BillExplainState> emit,
  ) {
    if (state is! BillExplainLoaded) return;
    final loaded = state as BillExplainLoaded;
    final expanded = Set<String>.from(loaded.expandedChargeIds);

    if (expanded.contains(event.chargeId)) {
      expanded.remove(event.chargeId);
    } else {
      expanded.add(event.chargeId);
    }

    emit(loaded.copyWith(expandedChargeIds: expanded));
  }
}
