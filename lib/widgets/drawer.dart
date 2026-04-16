import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';
import 'package:trachtenberg_grema/providers/app_provider.dart';

import '/constants/app_pages.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Drawer(
      child: Consumer<AppProvider>(
        builder: (context, appProvider, child) {
          return ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l10n.appTitle,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        appProvider.toggleTheme();
                      },
                      icon: Icon(
                        Icons.dark_mode,
                        color: Theme.of(context).colorScheme.onPrimary,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: Text(l10n.home),
                onTap: () {
                  appProvider.setPage(KAppPages.home);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_outlined),
                title: Text(l10n.warmUp),
                onTap: () {
                  appProvider.setPage(KAppPages.warmup);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_outlined),
                title: Text(l10n.oddsByFive),
                onTap: () {
                  appProvider.setPage(KAppPages.oddsByFiveExplication);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_outlined),
                title: Text(l10n.workout),
                onTap: () {
                  appProvider.setPage(KAppPages.oddsByFiveWorkout);
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 30),
              const Divider(thickness: 1, height: 1),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_outlined),
                title: Text(l10n.wantMoreTitle),
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
