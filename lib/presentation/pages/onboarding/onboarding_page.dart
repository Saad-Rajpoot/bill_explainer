import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/constants/app_colors.dart';
import 'package:provider/provider.dart';
import '../../../language/language_provider.dart';
import '../../../core/router/app_router.dart';

class _Slide {
  final String title, desc;
  final IconData icon;
  final Color iconColor;
  final List<Color> gradient;
  const _Slide(this.title, this.desc, this.icon, this.iconColor, this.gradient);
}

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});
  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _ctrl = PageController();
  int _page = 0;

  List<_Slide> _getSlides(LanguageProvider provider) {
    return [
      _Slide(provider.translate('onboarding1Title'), provider.translate('onboarding1Desc'),
          Icons.document_scanner_rounded, AppColors.primary,
          const [Color(0xFFE3F2FD), Color(0xFFBBDEFB)]),
      _Slide(provider.translate('onboarding2Title'), provider.translate('onboarding2Desc'),
          Icons.lightbulb_rounded, const Color(0xFFF57F17),
          const [Color(0xFFFFF8E1), Color(0xFFFFECB3)]),
      _Slide(provider.translate('onboarding3Title'), provider.translate('onboarding3Desc'),
          Icons.send_rounded, AppColors.success,
          const [Color(0xFFE8F5E9), Color(0xFFC8E6C9)]),
    ];
  }

  void _next(int length) {
    if (_page < length - 1) {
      _ctrl.nextPage(duration: 400.ms, curve: Curves.easeInOutCubic);
    } else {
      _finish();
    }
  }

  Future<void> _finish() async {
    final p = await SharedPreferences.getInstance();
    await p.setBool('onboarding_done', true);
    if (mounted) context.go(AppRoutes.home);
  }

  @override
  void dispose() { _ctrl.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);
    final isUrdu = languageProvider.currentLanguageCode == 'ur';
    final fontFamily = isUrdu ? 'NotoNastaliqUrdu' : 'Roboto';
    final slides = _getSlides(languageProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: _finish,
                child: Text(languageProvider.translate('onboardingSkip'),
                    style: TextStyle(fontFamily: fontFamily,
                        color: AppColors.textSecondary, fontSize: 16)),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _ctrl,
                itemCount: slides.length,
                onPageChanged: (i) => setState(() => _page = i),
                itemBuilder: (_, i) => _SlideView(slide: slides[i], fontFamily: fontFamily),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(slides.length, (i) =>
                      AnimatedContainer(
                        duration: 300.ms,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: _page == i ? 24 : 8, height: 8,
                        decoration: BoxDecoration(
                          color: _page == i ? AppColors.primary : AppColors.divider,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      )),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () => _next(slides.length),
                    child: Text(
                      _page == slides.length - 1
                          ? languageProvider.translate('onboardingStart')
                          : languageProvider.translate('onboardingNext'),
                      style: TextStyle(fontFamily: fontFamily,
                          fontSize: 20, fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SlideView extends StatelessWidget {
  final _Slide slide;
  final String fontFamily;
  const _SlideView({required this.slide, required this.fontFamily});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 140, height: 140,
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topLeft,
                  end: Alignment.bottomRight, colors: slide.gradient),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(slide.icon, size: 72, color: slide.iconColor),
          ).animate().scale(begin: const Offset(0.7, 0.7), duration: 500.ms,
              curve: Curves.elasticOut).fadeIn(),
          const SizedBox(height: 48),
          Text(slide.title, textAlign: TextAlign.center,
            style: TextStyle(fontFamily: fontFamily, fontSize: 28,
                fontWeight: FontWeight.w700, color: AppColors.textPrimary, height: 1.4),
          ).animate(delay: 150.ms).fadeIn().slideY(begin: 0.2, end: 0),
          const SizedBox(height: 20),
          Text(slide.desc, textAlign: TextAlign.center,
            style: TextStyle(fontFamily: fontFamily, fontSize: 17,
                color: AppColors.textSecondary, height: 1.6),
          ).animate(delay: 250.ms).fadeIn().slideY(begin: 0.2, end: 0),
        ],
      ),
    );
  }
}
