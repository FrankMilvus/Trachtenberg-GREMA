import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trachtenberg_grema/providers/app_provider.dart';

import '/constants/app_pages.dart';
import '../constants/colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Consumer<AppProvider>(
        builder: (context, appProvider, child) {
          return ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: KColors.basicColor(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("NeuroCalT"),
                    IconButton(
                      onPressed: () {
                        appProvider.toggleTheme();
                      },
                      icon: const Icon(Icons.dark_mode, color: Colors.white, size: 28),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  appProvider.setPage(KAppPages.home);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_outlined),
                title: const Text("Warm up"),
                onTap: () {
                  appProvider.setPage(KAppPages.warmup);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_outlined),
                title: const Text("Odds by 5"),
                onTap: () {
                  appProvider.setPage(KAppPages.oddsByFiveExplication);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_outlined),
                title: const Text("Work out"),
                onTap: () {
                  appProvider.setPage(KAppPages.oddsByFiveWorkout);
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 30),
              const Divider(thickness: 1, height: 1),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_outlined),
                title: const Text("Want more?"),
                onTap: () {
                  appProvider.setPage(KAppPages.wantMore);
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
