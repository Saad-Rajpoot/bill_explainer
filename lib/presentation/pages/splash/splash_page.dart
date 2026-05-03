import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../language/language_provider.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/router/app_router.dart';

/// Splash screen: shows logo + app name, then decides where to navigate.
/// Checks onboarding completion from SharedPreferences.
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  Future<void> _navigate() async {
    await Future.delayed(const Duration(milliseconds: 2200));
    if (!mounted) return;
    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return;
    final languageSelected = prefs.getBool('language_selected') ?? false;
    final onboardingDone = prefs.getBool('onboarding_done') ?? false;
    
    if (!languageSelected) {
      context.go(AppRoutes.languageSelection);
    } else if (onboardingDone) {
      context.go(AppRoutes.home);
    } else {
      context.go(AppRoutes.onboarding);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.primaryGradient),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ─── Lightning bolt icon              // Logo placeholder
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.3), width: 2),
                ),
                child: const Icon(Icons.bolt_rounded,
                    size: 80, color: Colors.white),
              )
                  .animate()
                  .scale(
                      duration: 800.ms,
                      curve: Curves.elasticOut,
                      begin: const Offset(0.5, 0.5))
                  .fadeIn(duration: 400.ms),

              const SizedBox(height: 32),

              Text(
                Provider.of<LanguageProvider>(context).translate('app_title'),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: 0,
                ),
              )
                  .animate(delay: 300.ms)
                  .fadeIn(duration: 500.ms)
                  .slideY(begin: 0.3, end: 0),

              const SizedBox(height: 12),

              Text(
                Provider.of<LanguageProvider>(context).translate('app_tagline'),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: Provider.of<LanguageProvider>(context).currentLanguageCode == 'ur' ? 'NotoNastaliqUrdu' : 'Roboto',
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.85),
                ),
              )
                  .animate(delay: 500.ms)
                  .fadeIn(duration: 500.ms)
                  .slideY(begin: 0.3, end: 0),

              const SizedBox(height: 60),

              // ─── Loading dots ─────────────────────────────────────
              _LoadingDots()
                  .animate(delay: 800.ms)
                  .fadeIn(duration: 400.ms),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoadingDots extends StatefulWidget {
  @override
  State<_LoadingDots> createState() => _LoadingDotsState();
}

class _LoadingDotsState extends State<_LoadingDots>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(3, (i) {
        return AnimatedBuilder(
          animation: _controller,
          builder: (_, __) {
            final offset = ((_controller.value * 3) - i).clamp(0.0, 1.0);
            final opacity = (offset < 0.5
                ? offset * 2
                : (1 - offset) * 2);
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3 + opacity * 0.7),
                shape: BoxShape.circle,
              ),
            );
          },
        );
      }),
    );
  }
}
