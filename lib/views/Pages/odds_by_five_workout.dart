import 'package:flutter/material.dart';
import 'package:untitled2/constants/app_pages.dart';
import 'package:untitled2/helper/get_rnd.dart';
import 'package:untitled2/widgets/one_digit_field.dart';

import '../../constants/text_styles.dart';
import '../../widgets/back_widget.dart';

class OddsByFiveWorkout extends StatelessWidget {
  const OddsByFiveWorkout({super.key});

  @override
  Widget build(BuildContext context) {
    var digit = RndDigit.randomEven(count: 5);

    return Scaffold(
      appBar: AppBar(
        title: Text("Workout"),
        centerTitle: true,
        leading: BackWidget(page: KAppPages.oddsByFiveExplication),
      ),

      // floatingActionButton: FabWidget(page: KAppPages.oddsByFiveMultiplication,),
      body: Column(
        children: [
          Text('Here generated number', style: KTextStyle.body(context)),
          Text('$digit + x5', style: KTextStyle.digit(context)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OneDigitField(),
              OneDigitField(),
              OneDigitField(),
              OneDigitField(),
              OneDigitField(),
            ],
          ),
        ],
      ),
    );
  }
}
