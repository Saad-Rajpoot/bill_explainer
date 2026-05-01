import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/router/app_router.dart';
import '../../../language/language_provider.dart';

class LanguageSelectionPage extends StatelessWidget {
  const LanguageSelectionPage({super.key});

  Future<void> _selectLanguage(BuildContext context, String langCode) async {
    final provider = Provider.of<LanguageProvider>(context, listen: false);
    await provider.setLanguage(langCode);
    
    // Save that we have shown this screen
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('language_selected', true);
    
    if (!context.mounted) return;
    
    // Check onboarding logic, same as SplashPage
    final onboardingDone = prefs.getBool('onboarding_done') ?? false;
    if (onboardingDone) {
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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Icon
                Center(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.3),
                        width: 1.5,
                      ),
                    ),
                    child: const Icon(
                      Icons.language,
                      size: 48,
                      color: Colors.white,
                    ),
                  ).animate().scale(
                        begin: const Offset(0.5, 0.5),
                        duration: 600.ms,
                        curve: Curves.elasticOut,
                      ).fadeIn(duration: 400.ms),
                ),
                const SizedBox(height: 32),

                // English Title
                const Text(
                  'Please select your language',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Roboto', // Default flutter font or keep as is
                  ),
                ).animate(delay: 200.ms).fadeIn().slideY(begin: 0.2, end: 0),

                const SizedBox(height: 8),

                // Urdu Title
                const Text(
                  'براہ کرم اپنی زبان منتخب کریں',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'NotoNastaliqUrdu',
                  ),
                ).animate(delay: 300.ms).fadeIn().slideY(begin: 0.2, end: 0),

                const SizedBox(height: 48),

                // English Button
                _LanguageCard(
                  title: '🇬🇧 English',
                  subtitle: 'Tap to continue',
                  fontFamily: 'Roboto',
                  onTap: () => _selectLanguage(context, 'en'),
                ).animate(delay: 500.ms).fadeIn().slideX(begin: 0.2, end: 0),

                const SizedBox(height: 16),

                // Urdu Button
                _LanguageCard(
                  title: 'اردو 🇵🇰',
                  subtitle: 'جاری رکھنے کے لیے ٹیپ کریں',
                  fontFamily: 'NotoNastaliqUrdu',
                  onTap: () => _selectLanguage(context, 'ur'),
                ).animate(delay: 600.ms).fadeIn().slideX(begin: -0.2, end: 0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LanguageCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String fontFamily;
  final VoidCallback onTap;

  const _LanguageCard({
    required this.title,
    required this.subtitle,
    required this.fontFamily,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                  fontFamily: fontFamily,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textSecondary,
                  fontFamily: fontFamily,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
