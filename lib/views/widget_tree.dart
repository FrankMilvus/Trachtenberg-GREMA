import 'package:flutter/material.dart';
import 'package:untitled2/views/Pages/odds_by_five_workout.dart';

import '../data/notifiers.dart';
import '../widgets/drawer.dart';
import 'Pages/odds_by_five.dart';
import 'Pages/hello_screen.dart';

List<Widget> pages = [HelloScreen(), FiveMultiExpScreen(), OddsByFiveWorkout()];

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
