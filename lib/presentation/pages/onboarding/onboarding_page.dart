import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_strings.dart';
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

  static const _slides = [
    _Slide(AppStrings.onboarding1Title, AppStrings.onboarding1Desc,
        Icons.document_scanner_rounded, AppColors.primary,
        [Color(0xFFE3F2FD), Color(0xFFBBDEFB)]),
    _Slide(AppStrings.onboarding2Title, AppStrings.onboarding2Desc,
        Icons.lightbulb_rounded, Color(0xFFF57F17),
        [Color(0xFFFFF8E1), Color(0xFFFFECB3)]),
    _Slide(AppStrings.onboarding3Title, AppStrings.onboarding3Desc,
        Icons.send_rounded, AppColors.success,
        [Color(0xFFE8F5E9), Color(0xFFC8E6C9)]),
  ];

  void _next() {
    if (_page < _slides.length - 1) {
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
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: _finish,
                child: const Text(AppStrings.onboardingSkip,
                    style: TextStyle(fontFamily: 'NotoNastaliqUrdu',
                        color: AppColors.textSecondary, fontSize: 16)),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _ctrl,
                itemCount: _slides.length,
                onPageChanged: (i) => setState(() => _page = i),
                itemBuilder: (_, i) => _SlideView(slide: _slides[i]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(_slides.length, (i) =>
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
                    onPressed: _next,
                    child: Text(
                      _page == _slides.length - 1
                          ? AppStrings.onboardingStart
                          : AppStrings.onboardingNext,
                      style: const TextStyle(fontFamily: 'NotoNastaliqUrdu',
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
  const _SlideView({required this.slide});
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
            style: const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 28,
                fontWeight: FontWeight.w700, color: AppColors.textPrimary, height: 1.4),
          ).animate(delay: 150.ms).fadeIn().slideY(begin: 0.2, end: 0),
          const SizedBox(height: 20),
          Text(slide.desc, textAlign: TextAlign.center,
            style: const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 17,
                color: AppColors.textSecondary, height: 1.6),
          ).animate(delay: 250.ms).fadeIn().slideY(begin: 0.2, end: 0),
        ],
      ),
    );
  }
}
