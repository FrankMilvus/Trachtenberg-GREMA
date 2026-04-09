import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';

import '../../constants/app_pages.dart';
import '../../constants/text_styles.dart';
import '../../widgets/back_widget.dart';

class WantMore extends StatelessWidget {
  const WantMore({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.wantMoreTitle), centerTitle: true,
      leading: const BackWidget(page: KAppPages.oddsByFiveWorkout)),

      // floatingActionButton: FabWidget(page: KAppPages.oddsByFiveExplication,),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(l10n.wantMore
          , style: KTextStyle.body(context)),
        ),
      ),
    );
  }
}
