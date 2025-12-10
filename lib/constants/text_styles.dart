import 'package:flutter/material.dart';

class KTextStyle {
  static TextStyle header(BuildContext context) => TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).colorScheme.primary,
  );

  static TextStyle body(BuildContext context) => TextStyle(
    fontSize: 22,
    color: Theme.of(context).colorScheme.onSurface,
  );
  static TextStyle digit(BuildContext context) => TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.amber,
  );

  static TextStyle smallNote(BuildContext context) =>
      TextStyle(fontSize: 14, color: Colors.grey);
}
