import 'package:flutter/material.dart';

class KTextStyle {
  static TextStyle header(BuildContext context) => TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.primary,
  );

  static TextStyle body(BuildContext context) => TextStyle(
    fontSize: 18,
    color: Theme.of(context).colorScheme.onBackground,
  );

  static TextStyle smallNote(BuildContext context) =>
      TextStyle(fontSize: 14, color: Colors.grey);
}
