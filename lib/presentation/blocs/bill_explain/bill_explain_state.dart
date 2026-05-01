import 'package:equatable/equatable.dart';
import '../../../domain/entities/bill_explanation.dart';

abstract class BillExplainState extends Equatable {
  const BillExplainState();
  @override
  List<Object?> get props => [];
}

class BillExplainInitial extends BillExplainState {
  const BillExplainInitial();
}

class BillExplainLoading extends BillExplainState {
  const BillExplainLoading();
}

class BillExplainLoaded extends BillExplainState {
  final BillExplanation explanation;
  final Set<String> expandedChargeIds;

  const BillExplainLoaded({
    required this.explanation,
    this.expandedChargeIds = const {},
  });

  BillExplainLoaded copyWith({
    BillExplanation? explanation,
    Set<String>? expandedChargeIds,
  }) {
    return BillExplainLoaded(
      explanation: explanation ?? this.explanation,
      expandedChargeIds: expandedChargeIds ?? this.expandedChargeIds,
    );
  }

  @override
  List<Object?> get props => [explanation, expandedChargeIds];
}

class BillExplainFailure extends BillExplainState {
  final String messageUrdu;
  const BillExplainFailure({required this.messageUrdu});

  @override
  List<Object?> get props => [messageUrdu];
}
