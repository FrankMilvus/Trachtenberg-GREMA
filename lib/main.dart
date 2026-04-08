import 'package:flutter/material.dart';
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
