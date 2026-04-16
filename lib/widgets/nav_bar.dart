import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.canGoBack,
    required this.canGoNext,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;
  final bool canGoBack;
  final bool canGoNext;

  Widget _navItem({
    required IconData icon,
    required String label,
    required bool enabled,
    required Color activeColor,
    required Color disabledColor,
  }) {
    final itemColor = enabled ? activeColor : disabledColor;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: itemColor),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(color: itemColor, fontSize: 12)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final activeColor =
        Theme.of(context).bottomNavigationBarTheme.selectedItemColor ??
        Theme.of(context).colorScheme.primary;
    final disabledColor = Theme.of(context).disabledColor;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (index) {
        if (index == 0 && !canGoBack) return;
        if (index == 1 && !canGoNext) return;
        onTap(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: _navItem(
            icon: Icons.arrow_back,
            label: l10n.back,
            enabled: canGoBack,
            activeColor: activeColor,
            disabledColor: disabledColor,
          ),
          label: '',
        ),

        BottomNavigationBarItem(
          icon: _navItem(
            icon: Icons.navigate_next,
            label: l10n.next,
            enabled: canGoNext,
            activeColor: activeColor,
            disabledColor: disabledColor,
          ),
          label: '',
        ),
      ],
    );
  }
}
