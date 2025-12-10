import 'package:flutter/material.dart';

class KColors {
  static Color basicColor(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
      ? Colors.blueGrey
      : Colors.green;

  static Color textColor(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
      ? Colors.white
      : Colors.black;
}
