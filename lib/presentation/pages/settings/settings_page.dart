import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/constants/wapda_tariffs.dart';
import '../../../core/router/app_router.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _company = WapdaTariffs.lesco;
  bool _darkMode = false;
  bool _notifications = true;
  String _version = '';

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    final info = await PackageInfo.fromPlatform();
    if (mounted) {
      setState(() {
        _company = prefs.getString('company') ?? WapdaTariffs.lesco;
        _darkMode = prefs.getBool('dark_mode') ?? false;
        _notifications = prefs.getBool('notifications') ?? true;
        _version = info.version;
      });
    }
  }

  Future<void> _save() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('company', _company);
    await prefs.setBool('dark_mode', _darkMode);
    await prefs.setBool('notifications', _notifications);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(AppStrings.settingsTitle),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.go(AppRoutes.home),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // ─── Company selection ──────────────────────────────────
          _Section(title: AppStrings.settingsCompany, children: [
            _CompanyDropdown(
              value: _company,
              onChanged: (d) { setState(() => _company = d); _save(); },
            ),
          ]).animate().fadeIn(),

          const SizedBox(height: 16),

          // ─── Preferences ─────────────────────────────────────
          _Section(title: 'ترجیحات', children: [
            _ToggleTile(
              icon: Icons.dark_mode_rounded,
              label: AppStrings.settingsDarkMode,
              value: _darkMode,
              onChanged: (v) { setState(() => _darkMode = v); _save(); },
            ),
            _ToggleTile(
              icon: Icons.notifications_rounded,
              label: AppStrings.settingsNotifications,
              value: _notifications,
              onChanged: (v) { setState(() => _notifications = v); _save(); },
            ),
          ]).animate(delay: 80.ms).fadeIn(),

          const SizedBox(height: 16),

          // ─── Info ────────────────────────────────────────────
          _Section(title: 'معلومات', children: [
            _NavTile(
              icon: Icons.privacy_tip_rounded,
              label: AppStrings.settingsPrivacy,
              onTap: () => launchUrl(
                  Uri.parse('https://bijlisamjho.app/privacy'),
                  mode: LaunchMode.externalApplication),
            ),
            _NavTile(
              icon: Icons.info_rounded,
              label: AppStrings.settingsAbout,
              trailing: Text(_version,
                  style: const TextStyle(fontFamily: 'Roboto',
                      color: AppColors.textSecondary)),
              onTap: () {},
            ),
          ]).animate(delay: 160.ms).fadeIn(),

          const SizedBox(height: 16),

          // ─── Premium CTA ─────────────────────────────────────
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: AppColors.primaryGradient,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star_rounded, color: Colors.white, size: 28),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(AppStrings.settingsPremium,
                          style: TextStyle(fontFamily: 'NotoNastaliqUrdu',
                              fontSize: 18, fontWeight: FontWeight.w700,
                              color: Colors.white)),
                      Text(AppStrings.premiumMonthly,
                          style: TextStyle(fontFamily: 'NotoNastaliqUrdu',
                              fontSize: 13, color: Colors.white70)),
                    ],
                  ),
                ],
              ),
            ),
          ).animate(delay: 220.ms).fadeIn().scale(begin: const Offset(0.95, 0.95)),

          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

// ─── Section wrapper ────────────────────────────────────────────────────────

class _Section extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const _Section({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8, right: 4),
          child: Text(title,
              style: const TextStyle(fontFamily: 'NotoNastaliqUrdu',
                  fontSize: 13, fontWeight: FontWeight.w700,
                  color: AppColors.textSecondary)),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.divider),
          ),
          child: Column(
            children: children.map((w) {
              final isLast = w == children.last;
              return Column(children: [
                w,
                if (!isLast) const Divider(height: 0, indent: 16, endIndent: 16),
              ]);
            }).toList(),
          ),
        ),
      ],
    );
  }
}

// ─── Company dropdown ─────────────────────────────────────────────────────────

class _CompanyDropdown extends StatelessWidget {
  final String value;
  final ValueChanged<String> onChanged;
  const _CompanyDropdown({required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          isExpanded: true,
          alignment: AlignmentDirectional.centerEnd,
          items: WapdaTariffs.allCompanies.map((d) {
            return DropdownMenuItem(
              value: d,
              child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(d, style: const TextStyle(fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600, fontSize: 15)),
                    Text(WapdaTariffs.companyUrduNames[d] ?? '',
                        style: const TextStyle(fontFamily: 'NotoNastaliqUrdu',
                            fontSize: 12, color: AppColors.textSecondary)),
                  ],
                ),
              ),
            );
          }).toList(),
          onChanged: (v) { if (v != null) onChanged(v); },
        ),
      ),
    );
  }
}

// ─── Toggle tile ────────────────────────────────────────────────────────────

class _ToggleTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;
  const _ToggleTile({required this.icon, required this.label,
      required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      secondary: Icon(icon, color: AppColors.primary),
      title: Text(label, textAlign: TextAlign.right,
          style: const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 16)),
      value: value,
      activeColor: AppColors.primary,
      onChanged: onChanged,
    );
  }
}

// ─── Nav tile ───────────────────────────────────────────────────────────────

class _NavTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final Widget? trailing;
  final VoidCallback onTap;
  const _NavTile({required this.icon, required this.label,
      this.trailing, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primary),
      trailing: trailing ?? const Icon(Icons.chevron_left_rounded,
          color: AppColors.textHint),
      title: Text(label, textAlign: TextAlign.right,
          style: const TextStyle(fontFamily: 'NotoNastaliqUrdu', fontSize: 16)),
      onTap: onTap,
    );
  }
}
