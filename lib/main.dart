import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:trachtenberg_grema/providers/app_provider.dart';
import 'package:trachtenberg_grema/views/widget_tree.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, appProvider, child) {
        return MaterialApp(
          title: 'NeuroCalT',
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
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: appProvider.isDarkMode ? Brightness.dark : Brightness.light,
            ),
          ),
          home: const WidgetTree(),
        );
      },
    );
  }
}



// flutter clean; flutter pub get; flutter build appbundle
