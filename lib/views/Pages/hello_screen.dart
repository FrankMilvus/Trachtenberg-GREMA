import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';
import 'package:trachtenberg_grema/widgets/pluses_desc_text.dart';

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
      child: AnimatedAlign(
        duration: const Duration(milliseconds: 250),
        alignment: _showDescription ? Alignment.topCenter : Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(l10n.hello, style: KTextStyle.title(context)),
              if (!_showDescription) ...[
                Text(
                  l10n.hello,
                  style: KTextStyle.title(context),
                  textAlign: TextAlign.center,
                ),
              ],
              const SizedBox(height: 8),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    _showDescription = !_showDescription;
                  });
                },
                child: Text(_showDescription ? l10n.read_less : l10n.read_more),
              ),
              if (_showDescription) ...[
                const SizedBox(height: 8),
                Text(
                  'KEY MENTAL BENEFITS OF 5 MINUTES A DAY OF ARITHMETIC',
                  style: KTextStyle.title(context),
                  textAlign: TextAlign.center,
                ),
                PlusesDescText(
                  firstText: l10n.plus_boosts_speed_title,
                  secondText: l10n.plus_boosts_speed_desc,
                ),
                PlusesDescText(
                  firstText: l10n.plus_strengthens_memory_title,
                  secondText: l10n.plus_strengthens_memory_desc,
                ),
                PlusesDescText(
                  firstText: l10n.plus_focus_title,
                  secondText: l10n.plus_focus_desc,
                ),
                PlusesDescText(
                  firstText: l10n.plus_logical_title,
                  secondText: l10n.plus_logical_desc,
                ),
                PlusesDescText(
                  firstText: l10n.plus_brain_health_title,
                  secondText: l10n.plus_brain_health_desc,
                ),
                PlusesDescText(
                  firstText: l10n.plus_confidence_title,
                  secondText: l10n.plus_confidence_desc,
                ),
                PlusesDescText(
                  firstText: l10n.plus_reduces_noise_title,
                  secondText: l10n.plus_reduces_noise_desc,
                ),
                PlusesDescText(
                  firstText: l10n.plus_why_title,
                  secondText:
                      '${l10n.plus_why_1}\n${l10n.plus_why_2}\n${l10n.plus_why_3}\n${l10n.plus_why_4}',
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
