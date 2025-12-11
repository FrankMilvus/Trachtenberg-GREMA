import 'package:flutter/material.dart';
import 'package:untitled2/constants/app_pages.dart';
import 'package:untitled2/helper/get_rnd.dart';
import 'package:untitled2/widgets/one_digit_field.dart';

import '../../constants/text_styles.dart';
import '../../widgets/back_widget.dart';

class OddsByFiveWorkout extends StatefulWidget {
  const OddsByFiveWorkout({super.key});

  @override
  State<OddsByFiveWorkout> createState() => _OddsByFiveWorkoutState();
}

class _OddsByFiveWorkoutState extends State<OddsByFiveWorkout> {
  final f1 = FocusNode();
  final f2 = FocusNode();
  final f3 = FocusNode();
  final f4 = FocusNode();
  final f5 = FocusNode();

  final c1 = TextEditingController();
  final c2 = TextEditingController();
  final c3 = TextEditingController();
  final c4 = TextEditingController();
  final c5 = TextEditingController();

  @override
  void dispose() {
    f1.dispose();
    f2.dispose();
    f3.dispose();
    f4.dispose();
    f5.dispose();
    c1.dispose(); c2.dispose(); c3.dispose(); c4.dispose(); c5.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var rnd = RndDigit.randomEven(count: 5);
    List <int> digits = rnd.digits;
    var digit = arrayToDigit(digits);

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
          SizedBox(height: 10),
          Text('$digit x5', style: KTextStyle.digit(context)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OneDigitField(focusNode: f1, nextFocus: f2, controller: c1),
              OneDigitField(focusNode: f2, nextFocus: f3, controller: c2),
              OneDigitField(focusNode: f3, nextFocus: f4, controller: c3),
              OneDigitField(focusNode: f4, nextFocus: f5, controller: c4),
              OneDigitField(focusNode: f5, controller: c5),
            ],
          ),
          SizedBox(height: 10),
          Text('Your answer', style: KTextStyle.body(context)),
        ],
      ),
    );
  }
}
