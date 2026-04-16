import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.whatIsThisApp),
        centerTitle: true,
        // leading: const BackWidget(page: KAppPages.home),
      ),

      // floatingActionButton: const FabWidget(
      //   page: KAppPages.oddsByFiveExplication,
      // ),
      body: Center(child: Text(l10n.hello)),
    );
  }
}
