import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.arrow_back),
          label: l10n.back,
        ),
        // BottomNavigationBarItem(
        //   icon: const Icon(Icons.flash_on),
        //   label: l10n.warmUp,
        // ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.navigate_next),
          label: l10n.next,
        ),
      ],
    );
  }
}
