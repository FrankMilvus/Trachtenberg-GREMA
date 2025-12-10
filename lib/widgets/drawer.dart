import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../data/notifiers.dart';
import '/constants/app_pages.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: KColors.basicColor(context)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Trachtenberg Grema"),
                IconButton(
                  onPressed: () {
                    isDarkModeNotifier.value = !isDarkModeNotifier.value;
                  },
                  icon: Icon(Icons.dark_mode, color: Colors.white, size: 28),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              selectedPageNotifier.value = KAppPages.home;
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.school_outlined),
            title: const Text("Odds by 5"),
            onTap: () {
              selectedPageNotifier.value = KAppPages.oddsByFiveMultiplication;
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.sports),
            title: const Text("Work out"),
            onTap: () {
              selectedPageNotifier.value = KAppPages.oddsByFiveWorkout;
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
