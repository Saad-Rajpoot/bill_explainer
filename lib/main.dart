import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/constants/app_colors.dart';
import 'core/router/app_router.dart';
import 'data/datasources/local/bill_local_datasource.dart';
import 'injection_container.dart';

/// Supabase project URL and anon key.
/// TODO: Move to .env / --dart-define before production.
const String _supabaseUrl = 'https://wwmhkwstgwigzomqdppf.supabase.co';
const String _supabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind3bWhrd3N0Z3dpZ3pvbXFkcHBmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Nzc0ODkyOTcsImV4cCI6MjA5MzA2NTI5N30.KuPivzGlmE9xwYj0cQzuJNEi7ymlylVT8jB6MpAzsYo';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ─── System UI ────────────────────────────────────────────────────
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // ─── Hive ─────────────────────────────────────────────────────────
  await Hive.initFlutter();

  // ─── Supabase ─────────────────────────────────────────────────────
  await Supabase.initialize(
    url: _supabaseUrl,
    anonKey: _supabaseAnonKey,
    debug: false,
  );

  // ─── Isar ─────────────────────────────────────────────────────────
  final isar = await IsarService.open();

  // ─── Dependency Injection ─────────────────────────────────────────
  await initDependencies(isar);

  // ─── BLoC observer (dev only) ─────────────────────────────────────
  assert(() {
    Bloc.observer = _AppBlocObserver();
    return true;
  }());

  runApp(const BijliSamjhoApp());
}

class BijliSamjhoApp extends StatelessWidget {
  const BijliSamjhoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'بجلی سمجھو',
      debugShowCheckedModeBanner: false,

      // ─── Routing ──────────────────────────────────────────────────
      routerConfig: appRouter,

      // ─── Theme ────────────────────────────────────────────────────
      theme: _buildLightTheme(),
      darkTheme: _buildDarkTheme(),
      themeMode: ThemeMode.system,

      // ─── Locale ───────────────────────────────────────────────────
      locale: const Locale('ur', 'PK'),
      supportedLocales: const [
        Locale('ur', 'PK'),
        Locale('en', 'US'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      // ─── Builder: global error handling ───────────────────────────
      builder: (context, child) {
        // Ensure text doesn't scale beyond 1.3x for consistent layout
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: MediaQuery.of(context).textScaler.clamp(
                  minScaleFactor: 0.8,
                  maxScaleFactor: 1.3,
                ),
          ),
          child: child!,
        );
      },
    );
  }

  ThemeData _buildLightTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.light,
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        error: AppColors.error,
        surface: AppColors.surface,
      ),
      scaffoldBackgroundColor: AppColors.background,
      fontFamily: 'NotoNastaliqUrdu',

      // AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.surface,
        foregroundColor: AppColors.textPrimary,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'NotoNastaliqUrdu',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.textPrimary,
        ),
      ),

      // ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textOnPrimary,
          minimumSize: const Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: const TextStyle(
            fontFamily: 'NotoNastaliqUrdu',
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          elevation: 0,
        ),
      ),

      // Card
      cardTheme: CardTheme(
        color: AppColors.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: AppColors.divider, width: 1),
        ),
        margin: EdgeInsets.zero,
      ),

      // Input
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surfaceVariant,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        labelStyle: const TextStyle(
          fontFamily: 'NotoNastaliqUrdu',
          color: AppColors.textSecondary,
        ),
      ),

      // Divider
      dividerTheme: const DividerThemeData(
        color: AppColors.divider,
        thickness: 1,
        space: 0,
      ),

      // SnackBar
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.textPrimary,
        contentTextStyle: const TextStyle(
          fontFamily: 'NotoNastaliqUrdu',
          color: AppColors.textOnPrimary,
          fontSize: 14,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  ThemeData _buildDarkTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.dark,
        primary: AppColors.primaryLight,
        secondary: AppColors.secondaryLight,
        error: AppColors.errorLight,
        surface: AppColors.darkSurface,
      ),
      scaffoldBackgroundColor: AppColors.darkBackground,
      fontFamily: 'NotoNastaliqUrdu',
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkSurface,
        foregroundColor: AppColors.darkTextPrimary,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'NotoNastaliqUrdu',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.darkTextPrimary,
        ),
      ),
      cardTheme: CardTheme(
        color: AppColors.darkSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: AppColors.darkDivider, width: 1),
        ),
        margin: EdgeInsets.zero,
      ),
    );
  }
}

/// Dev-only BLoC observer for logging state transitions.
class _AppBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    // ignore: avoid_print
    print('[BLoC] ${bloc.runtimeType}: ${transition.currentState.runtimeType}'
        ' → ${transition.nextState.runtimeType}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // ignore: avoid_print
    print('[BLoC ERROR] ${bloc.runtimeType}: $error');
    super.onError(bloc, error, stackTrace);
  }
}
