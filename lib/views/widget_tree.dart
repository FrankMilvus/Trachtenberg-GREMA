import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';
import 'package:trachtenberg_grema/providers/app_provider.dart';
import 'package:trachtenberg_grema/views/Pages/odds_by_five_workout.dart';
import 'package:trachtenberg_grema/views/Pages/want_more.dart';
import 'package:trachtenberg_grema/views/Pages/warmup.dart';
import 'package:trachtenberg_grema/widgets/nav_bar.dart';

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
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
        centerTitle: true,
        actions: [
          Consumer<AppProvider>(
            builder: (context, appProvider, _) {
              return PopupMenuButton<Locale>(
                icon: const Icon(Icons.language),
                onSelected: appProvider.setLocale,
                itemBuilder: (context) => const [
                  PopupMenuItem(value: Locale('en'), child: Text('English')),
                  PopupMenuItem(value: Locale('es'), child: Text('Español')),
                  PopupMenuItem(value: Locale('de'), child: Text('Deutsch')),
                  PopupMenuItem(value: Locale('fr'), child: Text('Français')),
                  PopupMenuItem(value: Locale('ru'), child: Text('Русский')),
                ],
              );
            },
          ),
        ],
      ),
      drawer: const DrawerWidget(),
      body: Consumer<AppProvider>(
        builder: (context, appProvider, _) {
          return pages[appProvider.selectedPage];
        },
      ),
      bottomNavigationBar: Consumer<AppProvider>(
        builder: (context, appProvider, _) {
          return NavbarWidget(
            currentIndex: 1,
            onTap: (index) {
              final currentPage = appProvider.selectedPage;
              final lastPageIndex = pages.length - 1;

              switch (index) {
                case 0:
                  if (currentPage > 0) {
                    appProvider.setPage(currentPage - 1);
                  }
                  break;
                case 1:
                  appProvider.setPage(1);
                  break;
                case 2:
                  if (currentPage < lastPageIndex) {
                    appProvider.setPage(currentPage + 1);
                  }
                  break;
              }
            },
          );
        },
      ),
    );
  }
}
