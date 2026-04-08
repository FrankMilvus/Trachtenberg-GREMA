import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trachtenberg_grema/providers/app_provider.dart';
import 'package:trachtenberg_grema/views/Pages/odds_by_five_workout.dart';
import 'package:trachtenberg_grema/views/Pages/want_more.dart';
import 'package:trachtenberg_grema/views/Pages/warmup.dart';

import '../widgets/drawer.dart';
import 'Pages/hello_screen.dart';
import 'Pages/odds_by_five.dart';

final List<Widget> pages = [
  const HelloScreen(),
  const WarmUp(),
  const FiveMultiExpScreen(),
  const OddsByFiveWorkout(),
  const WantMore(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("NeuroCalT"), centerTitle: true),
      drawer: const DrawerWidget(),
      body: Consumer<AppProvider>(
        builder: (context, appProvider, _) {
          return pages[appProvider.selectedPage];
        },
      ),
    );
  }
}
