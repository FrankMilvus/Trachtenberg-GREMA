import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF0E7C86),
    onPrimary: Colors.white,
    secondary: Color(0xFFF4B400),
    onSecondary: Colors.black,
    tertiary: Color(0xFFD9480F),
    onTertiary: Colors.white,
    error: Color(0xFFB3261E),
    onError: Colors.white,
    surface: Color(0xFFFFFBFE),
    onSurface: Color(0xFF1C1B1F),
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF6DD3DC),
    onPrimary: Color(0xFF00363B),
    secondary: Color(0xFFFFD166),
    onSecondary: Color(0xFF3A2F00),
    tertiary: Color(0xFFFF8C5A),
    onTertiary: Color(0xFF4A1500),
    error: Color(0xFFF2B8B5),
    onError: Color(0xFF601410),
    surface: Color(0xFF121212),
    onSurface: Color(0xFFE6E1E5),
  );

  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
      scaffoldBackgroundColor: lightColorScheme.surface,
      appBarTheme: AppBarTheme(
        backgroundColor: lightColorScheme.primary,
        foregroundColor: lightColorScheme.onPrimary,
      ),
      drawerTheme: DrawerThemeData(backgroundColor: lightColorScheme.surface),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: darkColorScheme,
      scaffoldBackgroundColor: darkColorScheme.surface,
      appBarTheme: AppBarTheme(
        backgroundColor: darkColorScheme.primary,
        foregroundColor: darkColorScheme.onPrimary,
      ),
      drawerTheme: DrawerThemeData(backgroundColor: darkColorScheme.surface),
    );
  }
}
