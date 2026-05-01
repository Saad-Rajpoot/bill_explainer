import 'package:equatable/equatable.dart';
import '../../../domain/entities/bill.dart';

// ─── Events ────────────────────────────────────────────────────────

abstract class BillHistoryEvent extends Equatable {
  const BillHistoryEvent();
  @override
  List<Object?> get props => [];
}

class BillHistoryLoadRequested extends BillHistoryEvent {
  const BillHistoryLoadRequested();
}

class BillHistoryDeleteRequested extends BillHistoryEvent {
  final String billId;
  const BillHistoryDeleteRequested({required this.billId});

  @override
  List<Object?> get props => [billId];
}

class BillHistoryRefreshRequested extends BillHistoryEvent {
  const BillHistoryRefreshRequested();
}

// ─── States ────────────────────────────────────────────────────────

abstract class BillHistoryState extends Equatable {
  const BillHistoryState();
  @override
  List<Object?> get props => [];
}

class BillHistoryInitial extends BillHistoryState {
  const BillHistoryInitial();
}

class BillHistoryLoading extends BillHistoryState {
  const BillHistoryLoading();
}

class BillHistoryLoaded extends BillHistoryState {
  final List<Bill> bills;
  final Bill? lastBill;
  final int totalUnits;
  final double totalAmount;

  const BillHistoryLoaded({
    required this.bills,
    this.lastBill,
    required this.totalUnits,
    required this.totalAmount,
  });

  bool get isEmpty => bills.isEmpty;

  @override
  List<Object?> get props => [bills, totalUnits, totalAmount];
}

class BillHistoryEmpty extends BillHistoryState {
  const BillHistoryEmpty();
}

class BillHistoryFailure extends BillHistoryState {
  final String messageUrdu;
  const BillHistoryFailure({required this.messageUrdu});

  @override
  List<Object?> get props => [messageUrdu];
}
