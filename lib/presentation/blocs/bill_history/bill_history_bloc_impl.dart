import 'package:flutter_bloc/flutter_bloc.dart';
import '../bill_history/bill_history_bloc.dart';
import '../../../domain/usecases/get_bill_history_usecase.dart';
import '../../../domain/repositories/bill_repository.dart';

/// Implements the BillHistory BLoC logic.
/// Separated from events/states file for clarity.
class BillHistoryBlocImpl extends Bloc<BillHistoryEvent, BillHistoryState> {
  final GetBillHistoryUseCase getBillHistoryUseCase;
  final BillRepository billRepository;

  BillHistoryBlocImpl({
    required this.getBillHistoryUseCase,
    required this.billRepository,
  }) : super(const BillHistoryInitial()) {
    on<BillHistoryLoadRequested>(_onLoadRequested);
    on<BillHistoryDeleteRequested>(_onDeleteRequested);
    on<BillHistoryRefreshRequested>(_onRefreshRequested);
  }

  Future<void> _onLoadRequested(
    BillHistoryLoadRequested event,
    Emitter<BillHistoryState> emit,
  ) async {
    emit(const BillHistoryLoading());
    await _loadBills(emit);
  }

  Future<void> _onRefreshRequested(
    BillHistoryRefreshRequested event,
    Emitter<BillHistoryState> emit,
  ) async {
    await _loadBills(emit);
  }

  Future<void> _onDeleteRequested(
    BillHistoryDeleteRequested event,
    Emitter<BillHistoryState> emit,
  ) async {
    await billRepository.deleteBill(event.billId);
    await _loadBills(emit);
  }

  Future<void> _loadBills(Emitter<BillHistoryState> emit) async {
    final result = await getBillHistoryUseCase();
    result.fold(
      (failure) => emit(BillHistoryFailure(messageUrdu: failure.message)),
      (bills) {
        if (bills.isEmpty) {
          emit(const BillHistoryEmpty());
          return;
        }
        final totalUnits = bills.fold(0, (sum, b) => sum + b.unitsConsumed);
        final totalAmount = bills.fold(0.0, (sum, b) => sum + b.totalAmount);
        emit(BillHistoryLoaded(
          bills: bills,
          lastBill: bills.first,
          totalUnits: totalUnits,
          totalAmount: totalAmount,
        ));
      },
    );
  }
}
