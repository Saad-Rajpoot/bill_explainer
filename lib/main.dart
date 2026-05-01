import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'core/constants/app_colors.dart';
import 'core/router/app_router.dart';
import 'data/datasources/local/bill_local_datasource.dart';
import 'injection_container.dart';
import 'language/language_provider.dart';
import 'package:provider/provider.dart';
import 'presentation/blocs/bill_history/bill_history_bloc.dart';
import 'presentation/blocs/bill_history/bill_history_bloc_impl.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

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

  // ─── Isar ─────────────────────────────────────────────────────────
  final isar = await IsarService.open();

  // ─── Dependency Injection ─────────────────────────────────────────
  await initDependencies(isar);

  // ─── BLoC observer (dev only) ─────────────────────────────────────
  assert(() {
    Bloc.observer = _AppBlocObserver();
    return true;
  }());

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageProvider()..loadSavedLanguage()),
        BlocProvider<BillHistoryBlocImpl>.value(
          value: sl<BillHistoryBlocImpl>()..add(const BillHistoryLoadRequested()),
        ),
      ],
      child: const BijliSamjhoApp(),
    ),
  );
}

class BijliSamjhoApp extends StatelessWidget {
  const BijliSamjhoApp({super.key});

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);

    // If still initializing, can show a simple loader or just default to ur.
    // However, it initializes very fast. We'll default to ur before init.
    final isUrdu = languageProvider.currentLanguageCode == 'ur';
    final currentFontFamily = isUrdu ? 'NotoNastaliqUrdu' : 'Roboto';

    return MaterialApp.router(
      title: languageProvider.translate('app_title'),
      debugShowCheckedModeBanner: false,

      // ─── Routing ──────────────────────────────────────────────────
      routerConfig: appRouter,

      // ─── Theme ────────────────────────────────────────────────────
      theme: _buildLightTheme(currentFontFamily),
      darkTheme: _buildDarkTheme(currentFontFamily),
      themeMode: ThemeMode.system,

      // ─── Locale ───────────────────────────────────────────────────
      locale: Locale(languageProvider.currentLanguageCode, isUrdu ? 'PK' : 'US'),
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
          child: Directionality(
            textDirection: isUrdu ? TextDirection.rtl : TextDirection.ltr,
            child: child!,
          ),
        );
      },
    );
  }

  ThemeData _buildLightTheme(String fontFamily) {
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
      fontFamily: fontFamily,

      // AppBar
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.surface,
        foregroundColor: AppColors.textPrimary,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: fontFamily,
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
          textStyle: TextStyle(
            fontFamily: fontFamily,
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
        labelStyle: TextStyle(
          fontFamily: fontFamily,
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
        contentTextStyle: TextStyle(
          fontFamily: fontFamily,
          color: AppColors.textOnPrimary,
          fontSize: 14,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  ThemeData _buildDarkTheme(String fontFamily) {
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
      fontFamily: fontFamily,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkSurface,
        foregroundColor: AppColors.darkTextPrimary,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: fontFamily,
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
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
  }
}
