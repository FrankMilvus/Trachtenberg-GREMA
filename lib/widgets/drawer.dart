import 'package:flutter/material.dart';

import '/constants/app_pages.dart';
import '../constants/colors.dart';
import '../data/notifiers.dart';

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
            leading: const Icon(Icons.arrow_circle_right_outlined),
            title: const Text("Warm up"),
            onTap: () {
              selectedPageNotifier.value = KAppPages.warmup;
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.arrow_circle_right_outlined),
            title: const Text("Odds by 5"),
            onTap: () {
              selectedPageNotifier.value = KAppPages.oddsByFiveExplication;
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.arrow_circle_right_outlined),
            title: const Text("Work out"),
            onTap: () {
              selectedPageNotifier.value = KAppPages.oddsByFiveWorkout;
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 30,),
          const Divider(thickness: 1, height: 1),

          ListTile(
            leading: const Icon(Icons.arrow_circle_right_outlined),
            title: const Text("Want more?"),
            onTap: () {
              selectedPageNotifier.value = KAppPages.wantMore;
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
