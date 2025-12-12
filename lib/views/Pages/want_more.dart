import 'package:flutter/material.dart';

import '../../constants/app_pages.dart';
import '../../constants/app_strings.dart';
import '../../constants/text_styles.dart';
import '../../widgets/back_widget.dart';
import '../../widgets/fab_widget.dart';

class WantMore extends StatelessWidget {
  const WantMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Do you want more????"), centerTitle: true,
      leading: BackWidget(page: KAppPages.oddsByFiveWorkout)),

      // floatingActionButton: FabWidget(page: KAppPages.oddsByFiveExplication,),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(KAppStrings.wantMore
          , style: KTextStyle.body(context)),
        ),
      ),
    );
  }
}
