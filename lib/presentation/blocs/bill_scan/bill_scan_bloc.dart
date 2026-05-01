import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'bill_scan_event.dart';
import 'bill_scan_state.dart';
import '../../../domain/usecases/scan_bill_usecase.dart';
import '../../../core/constants/app_strings.dart';

/// Manages the bill scan flow:
/// Permission → Image source → Crop → OCR → Parse → Save → Navigate
///
/// Business rules: ZERO logic here — all in [ScanBillUseCase].
/// BLoC only: orchestrates UI states and calls use-case.
class BillScanBloc extends Bloc<BillScanEvent, BillScanState> {
  final ScanBillUseCase scanBillUseCase;
  final ImagePicker _imagePicker = ImagePicker();

  // Tip rotation timer for the processing screen
  int _tipIndex = 0;
  Timer? _tipTimer;

  BillScanBloc({required this.scanBillUseCase})
      : super(const BillScanInitial()) {
    on<BillScanCameraRequested>(_onCameraRequested);
    on<BillScanGalleryRequested>(_onGalleryRequested);
    on<BillScanImageSelected>(_onImageSelected);
    on<BillScanCropConfirmed>(_onCropConfirmed);
    on<BillScanRetried>(_onRetried);
    on<BillScanReset>(_onReset);
  }

  // ─── Handlers ─────────────────────────────────────────────────────

  Future<void> _onCameraRequested(
    BillScanCameraRequested event,
    Emitter<BillScanState> emit,
  ) async {
    final permission = await Permission.camera.request();
    if (permission.isDenied || permission.isPermanentlyDenied) {
      emit(const BillScanPermissionDenied(
        messageUrdu: AppStrings.errorCameraPermission,
      ));
      return;
    }

    emit(const BillScanPickingSource());
    try {
      final file = await _imagePicker.pickImage(
        source: ImageSource.camera,
        imageQuality: 90, // Pre-compress in picker
        maxWidth: 1920,
      );
      if (file == null) {
        emit(const BillScanInitial());
        return;
      }
      emit(BillScanAwaitingCrop(imagePath: file.path));
    } catch (e) {
      emit(BillScanFailure(
        errorMessageUrdu: AppStrings.errorGeneric,
      ));
    }
  }

  Future<void> _onGalleryRequested(
    BillScanGalleryRequested event,
    Emitter<BillScanState> emit,
  ) async {

    emit(const BillScanPickingSource());
    try {
      final file = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 90,
        maxWidth: 1920,
      );
      if (file == null) {
        emit(const BillScanInitial());
        return;
      }
      emit(BillScanAwaitingCrop(imagePath: file.path));
    } catch (e) {
      emit(BillScanFailure(
        errorMessageUrdu: AppStrings.errorGeneric,
      ));
    }
  }

  Future<void> _onImageSelected(
    BillScanImageSelected event,
    Emitter<BillScanState> emit,
  ) async {
    emit(BillScanAwaitingCrop(imagePath: event.imagePath));
  }

  Future<void> _onCropConfirmed(
    BillScanCropConfirmed event,
    Emitter<BillScanState> emit,
  ) async {
    _startTipRotation();

    emit(BillScanProcessing(
      imagePath: event.croppedPath,
      currentTipUrdu: AppStrings.processingTips[0],
    ));

    final result = await scanBillUseCase(
      ScanBillParams(imagePath: event.croppedPath),
    );

    _stopTipRotation();

    result.fold(
      (failure) => emit(BillScanFailure(
        errorMessageUrdu: failure.message,
        canRetry: true,
      )),
      (bill) => emit(BillScanSuccess(bill: bill)),
    );
  }

  void _onRetried(BillScanRetried event, Emitter<BillScanState> emit) {
    emit(const BillScanInitial());
  }

  void _onReset(BillScanReset event, Emitter<BillScanState> emit) {
    _stopTipRotation();
    emit(const BillScanInitial());
  }

  // ─── Tip rotation ─────────────────────────────────────────────────

  void _startTipRotation() {
    _tipIndex = 0;
    _tipTimer = Timer.periodic(const Duration(seconds: 3), (_) {
      _tipIndex = (_tipIndex + 1) % AppStrings.processingTips.length;
      // Note: emitting from timer is only valid if bloc is not closed
      if (!isClosed && state is BillScanProcessing) {
        final current = state as BillScanProcessing;
        // ignore: invalid_use_of_visible_for_testing_member
        emit(BillScanProcessing(
          imagePath: current.imagePath,
          currentTipUrdu: AppStrings.processingTips[_tipIndex],
        ));
      }
    });
  }

  void _stopTipRotation() {
    _tipTimer?.cancel();
    _tipTimer = null;
  }

  @override
  Future<void> close() {
    _stopTipRotation();
    return super.close();
  }
}
