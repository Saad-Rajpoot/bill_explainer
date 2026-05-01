import 'package:flutter/material.dart';

/// Central color palette for Bijli Samjho.
/// All UI colors must reference this class — no hardcoded hex values in widgets.
abstract class AppColors {
  // ─── Brand ────────────────────────────────────────────────────────
  static const Color primary = Color(0xFF1565C0); // Trust / WAPDA blue
  static const Color primaryLight = Color(0xFF1E88E5);
  static const Color primaryDark = Color(0xFF0D47A1);

  static const Color secondary = Color(0xFFF57F17); // Alert orange
  static const Color secondaryLight = Color(0xFFFFA000);
  static const Color secondaryDark = Color(0xFFE65100);

  // ─── Semantic ─────────────────────────────────────────────────────
  static const Color success = Color(0xFF2E7D32); // Green — all good
  static const Color successLight = Color(0xFF43A047);
  static const Color successBackground = Color(0xFFE8F5E9);

  static const Color warning = Color(0xFFF9A825); // Yellow — slightly high
  static const Color warningLight = Color(0xFFFFCA28);
  static const Color warningBackground = Color(0xFFFFFDE7);

  static const Color error = Color(0xFFC62828); // Red — overcharged!
  static const Color errorLight = Color(0xFFE53935);
  static const Color errorBackground = Color(0xFFFFEBEE);

  // ─── Neutrals ─────────────────────────────────────────────────────
  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF0F4FF);

  static const Color textPrimary = Color(0xFF1A1A2E);
  static const Color textSecondary = Color(0xFF5C6B7A);
  static const Color textHint = Color(0xFF9BA5B0);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  static const Color divider = Color(0xFFE0E6ED);
  static const Color border = Color(0xFFCDD5DF);

  // ─── Dark Theme ───────────────────────────────────────────────────
  static const Color darkBackground = Color(0xFF0D1117);
  static const Color darkSurface = Color(0xFF161B22);
  static const Color darkSurfaceVariant = Color(0xFF1C2333);
  static const Color darkTextPrimary = Color(0xFFE6EDF3);
  static const Color darkTextSecondary = Color(0xFF8B949E);
  static const Color darkDivider = Color(0xFF21262D);

  // ─── Charge Traffic Light ─────────────────────────────────────────
  static const Color chargeNormal = success;
  static const Color chargeHigh = warning;
  static const Color chargeOvercharged = error;

  // ─── Gradients ────────────────────────────────────────────────────
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1565C0), Color(0xFF0288D1)],
  );

  static const LinearGradient successGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF2E7D32), Color(0xFF43A047)],
  );

  static const LinearGradient errorGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFC62828), Color(0xFFE53935)],
  );

  static const LinearGradient scanButtonGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFF57F17), Color(0xFFFF8F00)],
  );

  // ─── Shadow ───────────────────────────────────────────────────────
  static List<BoxShadow> get cardShadow => [
        BoxShadow(
          color: primary.withOpacity(0.08),
          blurRadius: 20,
          offset: const Offset(0, 4),
        ),
      ];

  static List<BoxShadow> get elevatedShadow => [
        BoxShadow(
          color: Colors.black.withOpacity(0.12),
          blurRadius: 24,
          offset: const Offset(0, 8),
        ),
      ];
}
