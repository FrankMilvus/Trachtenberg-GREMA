import 'package:flutter/material.dart';

import 'operation.dart';

class KBtnStyle {
  static ButtonStyle rangeButton(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return OutlinedButton.styleFrom(
      foregroundColor: colorScheme.onSurface,
      side: BorderSide(color: colorScheme.outline),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  static ButtonStyle operatorButton({
    required BuildContext context,
    required Operation current,
    required Operation button,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    return OutlinedButton.styleFrom(
      backgroundColor: current == button
          ? colorScheme.primary.withAlpha(51)
          : null,
      foregroundColor: colorScheme.onSurface,
      side: BorderSide(color: colorScheme.outline),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
