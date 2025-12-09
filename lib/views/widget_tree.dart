import 'package:flutter/material.dart';

import '../data/notifiers.dart';
import '../widgets/drawer.dart';
import 'Pages/five_multi_exp_screen.dart';
import 'Pages/hello_screen.dart';

List<Widget> pages = [HelloScreen(), FiveMultiExpScreen()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget Tree"), centerTitle: true),
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
