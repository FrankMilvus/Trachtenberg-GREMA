import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
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

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
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
