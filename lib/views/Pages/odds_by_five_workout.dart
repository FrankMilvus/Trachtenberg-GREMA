import 'package:flutter/material.dart';

import '../../constants/text_styles.dart';


class OddsByFiveWorkout extends StatelessWidget {
  const OddsByFiveWorkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Workout"), centerTitle: true),

      // floatingActionButton: FabWidget(page: KAppPages.oddsByFiveMultiplication,),

      body: Column(children: [
        Text('Here generated number',
        style: KTextStyle.body(context),)
      ],),
    );
  }
}
