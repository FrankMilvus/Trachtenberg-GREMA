import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppProvider extends ChangeNotifier {
  static const String _themeKey = 'isDarkMode';

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

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    _saveThemePreference();
    notifyListeners();
  }

  Future<void> _saveThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themeKey, _isDarkMode);
  }

  void setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  void setPage(int index) {
    _selectedPage = index;
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
