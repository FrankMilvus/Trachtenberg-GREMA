import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';

import '../../constants/app_pages.dart';
import '../../constants/text_styles.dart';
import '../../widgets/back_widget.dart';
import '../../widgets/fab_widget.dart';

class FiveMultiExpScreen extends StatelessWidget {
  const FiveMultiExpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.oddsByFive), centerTitle: true,
      leading: const BackWidget(page: KAppPages.warmup,)),
      floatingActionButton: const FabWidget(page: KAppPages.oddsByFiveWorkout,),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Text(l10n.oddsByFiveExplanation,
            style: KTextStyle.body(context),),
          ],
        ),
      ),
    );
  }
}
