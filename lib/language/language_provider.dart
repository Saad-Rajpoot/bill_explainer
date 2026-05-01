import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app_strings.dart';

class LanguageProvider extends ChangeNotifier {
  String _currentLanguageCode = 'en'; // Default to English, but we will read from prefs
  bool _isInitialized = false;

  String get currentLanguageCode => _currentLanguageCode;
  bool get isInitialized => _isInitialized;

  String translate(String key) {
    if (_currentLanguageCode == 'ur') {
      return AppStrings.ur[key] ?? key;
    }
    return AppStrings.en[key] ?? key;
  }

  Future<void> loadSavedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('selected_language')) {
      _currentLanguageCode = prefs.getString('selected_language') ?? 'en';
    } else {
      _currentLanguageCode = 'ur'; // Or some default
    }
    _isInitialized = true;
    notifyListeners();
  }

  Future<void> setLanguage(String languageCode) async {
    _currentLanguageCode = languageCode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('selected_language', languageCode);
    notifyListeners();
  }
}
