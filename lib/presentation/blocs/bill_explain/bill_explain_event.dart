import 'package:equatable/equatable.dart';

abstract class BillExplainEvent extends Equatable {
  const BillExplainEvent();
  @override
  List<Object?> get props => [];
}

class BillExplainRequested extends BillExplainEvent {
  final String billId;
  const BillExplainRequested({required this.billId});

  @override
  List<Object?> get props => [billId];
}

class BillExplainShareRequested extends BillExplainEvent {
  const BillExplainShareRequested();
}

class BillExplainComplaintRequested extends BillExplainEvent {
  const BillExplainComplaintRequested();
}

class BillExplainChargeExpanded extends BillExplainEvent {
  final String chargeId;
  const BillExplainChargeExpanded({required this.chargeId});

  @override
  List<Object?> get props => [chargeId];
}
