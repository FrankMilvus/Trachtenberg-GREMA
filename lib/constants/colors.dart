import 'package:flutter/material.dart';

// class KColors {
//   static Color get basicColor =>
//       ThemeData().brightness == Brightness.dark ? Colors.black : Colors.green;
//
//   static Color get textColor =>
//       ThemeData().brightness == Brightness.dark ? Colors.white : Colors.black;
// }


class KColors {
  static Color basicColor(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark ? Colors.blueGrey : Colors.green;

  static Color textColor(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black;
}
