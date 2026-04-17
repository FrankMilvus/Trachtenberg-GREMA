import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppProvider extends ChangeNotifier {
  static const String _themeKey = 'isDarkMode';
  static const String _localeKey = 'languageCode';
  static const String _selectedPageKey = 'selectedPage';

  bool _isDarkMode = false;
  int _selectedPage = 0;
  bool _isTextCorrect = false;
  bool _isBtnActive = false;
  Locale? _locale;

  bool get isDarkMode => _isDarkMode;
  int get selectedPage => _selectedPage;
  bool get isTextCorrect => _isTextCorrect;
  bool get isBtnActive => _isBtnActive;
  Locale? get locale => _locale;

  Future<void> loadThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    _isDarkMode = prefs.getBool(_themeKey) ?? false;
    notifyListeners();
  }

  Future<void> loadLocalePreference() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString(_localeKey);
    if (languageCode != null && languageCode.isNotEmpty) {
      _locale = Locale(languageCode);
    }
    notifyListeners();
  }

  Future<void> loadSelectedPagePreference() async {
    final prefs = await SharedPreferences.getInstance();
    _selectedPage = prefs.getInt(_selectedPageKey) ?? 0;
    notifyListeners();
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    _saveThemePreference();
    notifyListeners();
  }

  Future<void> _saveThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themeKey, _isDarkMode);
  }

  Future<void> _saveLocalePreference() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, _locale?.languageCode ?? 'en');
  }

  Future<void> _saveSelectedPagePreference() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_selectedPageKey, _selectedPage);
  }

  void setLocale(Locale locale) {
    _locale = locale;
    _saveLocalePreference();
    notifyListeners();
  }

  void setPage(int index) {
    _selectedPage = index;
    _saveSelectedPagePreference();
    notifyListeners();
  }

  void setTextCorrect(bool value) {
    _isTextCorrect = value;
    notifyListeners();
  }

  void setBtnActive(bool value) {
    _isBtnActive = value;
    notifyListeners();
  }
}
