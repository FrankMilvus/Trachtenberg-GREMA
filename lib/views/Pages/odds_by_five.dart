import 'package:flutter/material.dart';

import '../../constants/app_pages.dart';
import '../../constants/app_strings.dart';
import '../../constants/text_styles.dart';
import '../../widgets/back_widget.dart';
import '../../widgets/fab_widget.dart';

class FiveMultiExpScreen extends StatelessWidget {
  const FiveMultiExpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Odds by five'), centerTitle: true,
      leading: BackWidget(page: KAppPages.warmup,)),
      floatingActionButton: FabWidget(page: KAppPages.oddsByFiveWorkout,),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Text(KAppStrings.oddsByFiveMultiplicationExplanation,
            style: KTextStyle.body(context),),
          ],
        ),
      ),
    );
  }
}
