import 'package:flutter/material.dart';

import 'operation.dart';

class KBtnStyle {
  static ButtonStyle rangeButton() {
    return OutlinedButton.styleFrom(
      // foregroundColor: isDarkModeNotifier.value ? Colors.white : Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  static ButtonStyle operatorButton({
    required Operation current,
    required Operation button,
  }) {
    return OutlinedButton.styleFrom(
      backgroundColor:
      current == button ? Colors.blue.withAlpha(51) : null,
      // foregroundColor: isDarkModeNotifier.value ? Colors.white : Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
