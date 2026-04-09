import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';

import '../../constants/app_pages.dart';
import '../../constants/text_styles.dart';
import '../../widgets/fab_widget.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.whatIsThisApp), centerTitle: true),
      floatingActionButton: const FabWidget(page: KAppPages.warmup),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Text(
            l10n.hello,
            style: KTextStyle.body(context),
          ),
        ),
      ),
    );
  }
}
