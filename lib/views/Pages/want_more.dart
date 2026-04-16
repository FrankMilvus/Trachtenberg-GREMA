import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';

import '../../constants/text_styles.dart';

class WantMore extends StatelessWidget {
  const WantMore({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Text(l10n.wantMore, style: KTextStyle.body(context)),
      ),
    );
  }
}
