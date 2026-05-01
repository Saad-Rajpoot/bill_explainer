import 'package:equatable/equatable.dart';
import '../../../domain/entities/bill.dart';

abstract class BillScanState extends Equatable {
  const BillScanState();
  @override
  List<Object?> get props => [];
}

/// Initial — ready to scan
class BillScanInitial extends BillScanState {
  const BillScanInitial();
}

/// Waiting for user to pick image source
class BillScanPickingSource extends BillScanState {
  const BillScanPickingSource();
}

/// Image captured — awaiting crop confirmation
class BillScanAwaitingCrop extends BillScanState {
  final String imagePath;
  const BillScanAwaitingCrop({required this.imagePath});

  @override
  List<Object?> get props => [imagePath];
}

/// OCR in progress — show loading with Urdu tips
class BillScanProcessing extends BillScanState {
  final String imagePath;
  final String currentTipUrdu;
  const BillScanProcessing({
    required this.imagePath,
    required this.currentTipUrdu,
  });

  @override
  List<Object?> get props => [imagePath, currentTipUrdu];
}

/// Scan complete — bill parsed and saved
class BillScanSuccess extends BillScanState {
  final Bill bill;
  const BillScanSuccess({required this.bill});

  @override
  List<Object?> get props => [bill];
}

/// Scan failed — show Urdu error
class BillScanFailure extends BillScanState {
  final String errorMessageUrdu;
  final bool canRetry;
  const BillScanFailure({
    required this.errorMessageUrdu,
    this.canRetry = true,
  });

  @override
  List<Object?> get props => [errorMessageUrdu, canRetry];
}

/// Camera/gallery permission denied
class BillScanPermissionDenied extends BillScanState {
  final String messageUrdu;
  const BillScanPermissionDenied({required this.messageUrdu});

  @override
  List<Object?> get props => [messageUrdu];
}
