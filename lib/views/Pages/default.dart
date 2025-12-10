import 'package:flutter/material.dart';

import '../../constants/app_pages.dart';
import '../../constants/app_strings.dart';
import '../../widgets/back_widget.dart';
import '../../widgets/fab_widget.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("What this app is?"), centerTitle: true,
      leading: BackWidget(page: KAppPages.home)),

      floatingActionButton: FabWidget(page: KAppPages.oddsByFiveExplication,),

      body: Center(
        child: Text(KAppStrings.howSimpleAnyToFive),
      ),
    );
  }
}
