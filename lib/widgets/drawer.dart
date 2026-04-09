import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:trachtenberg_grema/providers/app_provider.dart';

import '/constants/app_pages.dart';
import '../constants/colors.dart';

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
              const Divider(thickness: 1, height: 1),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    const Icon(Icons.language, color: Colors.grey),
                    const SizedBox(width: 32),
                    Text(l10n.language, style: Theme.of(context).textTheme.titleMedium),
                    const Spacer(),
                    DropdownButton<Locale>(
                      value: appProvider.locale ?? Localizations.localeOf(context),
                      items: const [
                        DropdownMenuItem(value: Locale('en'), child: Text('English')),
                        DropdownMenuItem(value: Locale('es'), child: Text('Español')),
                        DropdownMenuItem(value: Locale('de'), child: Text('Deutsch')),
                        DropdownMenuItem(value: Locale('fr'), child: Text('Français')),
                        DropdownMenuItem(value: Locale('ru'), child: Text('Русский')),
                      ],
                      onChanged: (Locale? newLocale) {
                        if (newLocale != null) {
                          appProvider.setLocale(newLocale);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
