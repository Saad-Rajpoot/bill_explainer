import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/pages/splash/splash_page.dart';
import '../../presentation/pages/onboarding/onboarding_page.dart';
import '../../presentation/pages/home/home_page.dart';
import '../../presentation/pages/scan/scan_bill_page.dart';
import '../../presentation/pages/explanation/bill_explanation_page.dart';
import '../../presentation/pages/history/bill_history_page.dart';
import '../../presentation/pages/compare/compare_bills_page.dart';
import '../../presentation/pages/settings/settings_page.dart';

/// All app route names — never use raw strings in navigation calls.
abstract class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String home = '/home';
  static const String scan = '/scan';
  static const String explanation = '/explanation';
  static const String history = '/history';
  static const String compare = '/compare';
  static const String settings = '/settings';
}

/// Route parameter keys
abstract class RouteParams {
  static const String billId = 'billId';
}

/// App-wide GoRouter instance.
final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  debugLogDiagnostics: false,
  routes: [
    // ─── Splash ─────────────────────────────────────────────────────
    GoRoute(
      path: AppRoutes.splash,
      name: 'splash',
      builder: (context, state) => const SplashPage(),
    ),

    // ─── Onboarding ─────────────────────────────────────────────────
    GoRoute(
      path: AppRoutes.onboarding,
      name: 'onboarding',
      builder: (context, state) => const OnboardingPage(),
      pageBuilder: (context, state) => CustomTransitionPage(
        child: const OnboardingPage(),
        transitionsBuilder: _fadeTransition,
      ),
    ),

    // ─── Home (Shell with bottom nav) ───────────────────────────────
    GoRoute(
      path: AppRoutes.home,
      name: 'home',
      builder: (context, state) => const HomePage(),
      pageBuilder: (context, state) => CustomTransitionPage(
        child: const HomePage(),
        transitionsBuilder: _fadeTransition,
      ),
      routes: [
        // ─── Scan ───────────────────────────────────────────────────
        GoRoute(
          path: 'scan',
          name: 'scan',
          builder: (context, state) => const ScanBillPage(),
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const ScanBillPage(),
            transitionsBuilder: _slideUpTransition,
          ),
        ),

        // ─── Explanation ────────────────────────────────────────────
        GoRoute(
          path: 'explanation/:${RouteParams.billId}',
          name: 'explanation',
          builder: (context, state) {
            final billId = state.pathParameters[RouteParams.billId]!;
            return BillExplanationPage(billId: billId);
          },
          pageBuilder: (context, state) {
            final billId = state.pathParameters[RouteParams.billId]!;
            return CustomTransitionPage(
              child: BillExplanationPage(billId: billId),
              transitionsBuilder: _slideUpTransition,
            );
          },
        ),

        // ─── History ────────────────────────────────────────────────
        GoRoute(
          path: 'history',
          name: 'history',
          builder: (context, state) => const BillHistoryPage(),
        ),

        // ─── Compare ────────────────────────────────────────────────
        GoRoute(
          path: 'compare',
          name: 'compare',
          builder: (context, state) => const CompareBillsPage(),
        ),

        // ─── Settings ───────────────────────────────────────────────
        GoRoute(
          path: 'settings',
          name: 'settings',
          builder: (context, state) => const SettingsPage(),
        ),
      ],
    ),
  ],

  // ─── Error handler ────────────────────────────────────────────────
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text(
        'صفحہ نہیں ملا\n${state.error}',
        textAlign: TextAlign.center,
        style: const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 18),
      ),
    ),
  ),
);

// ─── Transition helpers ───────────────────────────────────────────────

Widget _fadeTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return FadeTransition(opacity: animation, child: child);
}

Widget _slideUpTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return SlideTransition(
    position: Tween<Offset>(
      begin: const Offset(0, 0.08),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOutCubic)),
    child: FadeTransition(opacity: animation, child: child),
  );
}
