import 'package:flutter/material.dart';

import '../../constants/app_pages.dart';
import '../../constants/app_strings.dart';
import '../../widgets/fab_widget.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("What this app is?"), centerTitle: true),

      floatingActionButton: FabWidget(page: KAppPages.oddsByFiveMultiplication,),

      body: Center(
        child: Text(KAppStrings.howSimpleAnyToFive),
      ),
    );
  }
}
