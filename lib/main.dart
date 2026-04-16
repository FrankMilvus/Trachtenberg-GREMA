import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:trachtenberg_grema/constants/app_theme.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';
import 'package:trachtenberg_grema/providers/app_provider.dart';
import 'package:trachtenberg_grema/views/widget_tree.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  WidgetsFlutterBinding.ensureInitialized();
  await WakelockPlus.enable();
  final appProvider = AppProvider();
  await appProvider.loadThemePreference();
  await appProvider.loadLocalePreference();
  runApp(
    ChangeNotifierProvider.value(value: appProvider, child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, appProvider, child) {
        FlutterNativeSplash.remove();
        return MaterialApp(
          onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
          debugShowCheckedModeBanner: false,
          locale: appProvider.locale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'),
            Locale('es'),
            Locale('de'),
            Locale('fr'),
            Locale('ru'),
          ],
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),
          themeMode: appProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: const WidgetTree(),
        );
      },
    );
  }
}

// flutter clean; flutter pub get; flutter build appbundle
