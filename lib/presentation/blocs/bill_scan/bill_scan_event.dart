import 'package:equatable/equatable.dart';


abstract class BillScanEvent extends Equatable {
  const BillScanEvent();
  @override
  List<Object?> get props => [];
}

/// User tapped "Take Photo with Camera"
class BillScanCameraRequested extends BillScanEvent {
  const BillScanCameraRequested();
}

/// User tapped "Pick from Gallery"
class BillScanGalleryRequested extends BillScanEvent {
  const BillScanGalleryRequested();
}

/// Image selected — begin compression + OCR + parse + save
class BillScanImageSelected extends BillScanEvent {
  final String imagePath;
  const BillScanImageSelected({required this.imagePath});

  @override
  List<Object?> get props => [imagePath];
}

/// User confirmed the cropped bill area
class BillScanCropConfirmed extends BillScanEvent {
  final String croppedPath;
  const BillScanCropConfirmed({required this.croppedPath});

  @override
  List<Object?> get props => [croppedPath];
}

/// User retried after an error
class BillScanRetried extends BillScanEvent {
  const BillScanRetried();
}

/// User dismissed the scan result
class BillScanReset extends BillScanEvent {
  const BillScanReset();
}
