import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/views/Pages/odds_by_five_workout.dart';
import 'package:trachtenberg_grema/views/Pages/want_more.dart';
import 'package:trachtenberg_grema/views/Pages/warmup.dart';

import '../data/notifiers.dart';
import '../widgets/drawer.dart';
import 'Pages/hello_screen.dart';
import 'Pages/odds_by_five.dart';

List<Widget> pages = [
  HelloScreen(),
  WarmUp(),
  FiveMultiExpScreen(),
  OddsByFiveWorkout(),
  WantMore(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GREMA"), centerTitle: true),
      drawer: const DrawerWidget(),
      // bottomNavigationBar: NavbarWidget(),
      body: ValueListenableBuilder<int>(
        valueListenable: selectedPageNotifier,
        builder: (context, page, _) {
          return pages[page];
        },
      ),
    );
  }
}
