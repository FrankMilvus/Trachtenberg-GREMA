import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';

import '../../constants/text_styles.dart';

class HelloScreen extends StatefulWidget {
  const HelloScreen({super.key});

  @override
  State<HelloScreen> createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  bool _showDescription = false;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(l10n.hello, style: KTextStyle.body(context)),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  _showDescription = !_showDescription;
                });
              },
              child: Text(_showDescription ? "read less" : "read more"),
            ),
            if (_showDescription) ...[
              const SizedBox(height: 8),
              Text('detailed description', style: KTextStyle.body(context)),
            ],
          ],
        ),
      ),
    );
  }
}
