import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:provider/provider.dart';
import '../../../language/language_provider.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/router/app_router.dart';
import '../../../injection_container.dart';
import '../../blocs/bill_scan/bill_scan_bloc.dart';
import '../../blocs/bill_scan/bill_scan_event.dart';
import '../../blocs/bill_scan/bill_scan_state.dart';

class ScanBillPage extends StatelessWidget {
  const ScanBillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<BillScanBloc>(),
      child: const _ScanView(),
    );
  }
}

class _ScanView extends StatelessWidget {
  const _ScanView();

  @override
  Widget build(BuildContext context) {
    return BlocListener<BillScanBloc, BillScanState>(
      listener: (context, state) async {
        if (state is BillScanSuccess) {
          context.go('${AppRoutes.home}/explanation/${state.bill.id}');
        }
        if (state is BillScanAwaitingCrop) {
          await _cropImage(context, state.imagePath);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text(Provider.of<LanguageProvider>(context).translate('app_title')),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () => context.go(AppRoutes.home),
          ),
        ),
        body: BlocBuilder<BillScanBloc, BillScanState>(
          builder: (context, state) {
            if (state is BillScanProcessing) return _ProcessingView(state: state);
            if (state is BillScanFailure) return _ErrorView(state: state);
            if (state is BillScanPermissionDenied) return _PermissionView(state: state);
            return _IdleView();
          },
        ),
      ),
    );
  }

  Future<void> _cropImage(BuildContext context, String imagePath) async {
    final cropped = await ImageCropper().cropImage(
      sourcePath: imagePath,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: Provider.of<LanguageProvider>(context, listen: false).translate('scan_crop'),
          toolbarColor: AppColors.primary,
          toolbarWidgetColor: Colors.white,
          activeControlsWidgetColor: AppColors.secondary,
        ),
        IOSUiSettings(title: Provider.of<LanguageProvider>(context, listen: false).translate('scan_crop')),
      ],
    );
    if (context.mounted) {
      if (cropped != null) {
        context.read<BillScanBloc>().add(
              BillScanCropConfirmed(croppedPath: cropped.path));
      } else {
        context.read<BillScanBloc>().add(const BillScanReset());
      }
    }
  }
}

// ─── Idle: two source buttons ───────────────────────────────────────────

class _IdleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const SizedBox(height: 32),
          // Illustration
          Container(
            width: 160, height: 160,
            decoration: BoxDecoration(
              color: AppColors.surfaceVariant,
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Icon(Icons.receipt_long_rounded,
                size: 80, color: AppColors.primary),
          ).animate().scale(begin: const Offset(0.8, 0.8), duration: 500.ms,
              curve: Curves.easeOutBack),
          const SizedBox(height: 32),
          Text(Provider.of<LanguageProvider>(context).translate('scan_title'), // Used as general instruction
              style: const TextStyle(
                  fontSize: 26, fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary))
              .animate(delay: 100.ms).fadeIn(),
          const SizedBox(height: 8),
          Text(Provider.of<LanguageProvider>(context).translate('scanTip'), 
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 15, color: AppColors.textSecondary))
              .animate(delay: 150.ms).fadeIn(),
          const Spacer(),
          // Camera button
          _SourceButton(
            icon: Icons.camera_alt_rounded,
            label: Provider.of<LanguageProvider>(context).translate('btn_camera'),
            gradient: AppColors.primaryGradient,
            onTap: () => context.read<BillScanBloc>()
                .add(const BillScanCameraRequested()),
          ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.2),
          const SizedBox(height: 16),
          // Gallery button
          _SourceButton(
            icon: Icons.photo_library_rounded,
            label: Provider.of<LanguageProvider>(context).translate('btn_gallery'),
            gradient: LinearGradient(colors: [
              AppColors.textSecondary.withOpacity(0.2),
              AppColors.textSecondary.withOpacity(0.1),
            ]),
            textColor: AppColors.textPrimary,
            onTap: () => context.read<BillScanBloc>()
                .add(const BillScanGalleryRequested()),
          ).animate(delay: 280.ms).fadeIn().slideY(begin: 0.2),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _SourceButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final LinearGradient gradient;
  final Color textColor;
  final VoidCallback onTap;
  const _SourceButton({required this.icon, required this.label,
      required this.gradient, this.textColor = Colors.white, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.08),
                blurRadius: 12, offset: const Offset(0, 4))
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: textColor, size: 26),
            const SizedBox(width: 12),
            Text(label, style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: textColor)),
          ],
        ),
      ),
    );
  }
}

// ─── Processing view ────────────────────────────────────────────────────

class _ProcessingView extends StatelessWidget {
  final BillScanProcessing state;
  const _ProcessingView({required this.state});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(
                strokeWidth: 3, color: AppColors.primary),
            const SizedBox(height: 32),
            Text(Provider.of<LanguageProvider>(context).translate('loading_message'),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 22, fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary)),
            const SizedBox(height: 24),
            AnimatedSwitcher(
              duration: 400.ms,
              child: Container(
                key: ValueKey(state.tipKey),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  Provider.of<LanguageProvider>(context).translate(state.tipKey),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                      fontSize: 15, color: AppColors.primary),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Error view ─────────────────────────────────────────────────────────

class _ErrorView extends StatelessWidget {
  final BillScanFailure state;
  const _ErrorView({required this.state});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline_rounded,
              size: 64, color: AppColors.error),
          const SizedBox(height: 24),
          Text(Provider.of<LanguageProvider>(context).translate('error_message'), textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 18, color: AppColors.textPrimary)),
          const SizedBox(height: 32),
          if (state.canRetry)
            ElevatedButton(
              onPressed: () =>
                  context.read<BillScanBloc>().add(const BillScanRetried()),
              child: Text(Provider.of<LanguageProvider>(context).translate('retry_button')),
            ),
        ],
      ),
    );
  }
}

// ─── Permission view ────────────────────────────────────────────────────

class _PermissionView extends StatelessWidget {
  final BillScanPermissionDenied state;
  const _PermissionView({required this.state});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.no_photography_rounded,
              size: 64, color: AppColors.warning),
          const SizedBox(height: 24),
          Text(Provider.of<LanguageProvider>(context).translate('permission_denied'), textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 18, color: AppColors.textPrimary)),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () =>
                context.read<BillScanBloc>().add(const BillScanRetried()),
            child: Text(Provider.of<LanguageProvider>(context).translate('retry_button')),
          ),
        ],
      ),
    );
  }
}
