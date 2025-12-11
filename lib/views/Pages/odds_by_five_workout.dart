import 'package:flutter/material.dart';
import 'package:untitled2/constants/app_pages.dart';
import 'package:untitled2/helper/digit_to_list.dart';
import 'package:untitled2/helper/get_rnd.dart';
import 'package:untitled2/helper/list_to_digit.dart';
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
  final f6 = FocusNode();

  final c1 = TextEditingController();
  final c2 = TextEditingController();
  final c3 = TextEditingController();
  final c4 = TextEditingController();
  final c5 = TextEditingController();
  final c6 = TextEditingController();

  // late final int digit;
  // late final List<int> result;

  @override
  void initState() {
    super.initState();

    // const int multiplier = 5;
    // var rnd = RndDigit.randomEven(count: multiplier);
    //
    // digit = rnd.number;                   // assign to state variable
    // result = numberToList(digit * multiplier);
    //

    void listener() => setState(() {});

    c1.addListener(listener);
    c2.addListener(listener);
    c3.addListener(listener);
    c4.addListener(listener);
    c5.addListener(listener);
    c6.addListener(listener);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(f1); // auto-focus first field
    });
  }

  @override
  void dispose() {
    f1.dispose();
    f2.dispose();
    f3.dispose();
    f4.dispose();
    f5.dispose();
    f6.dispose();

    c1.dispose();
    c2.dispose();
    c3.dispose();
    c4.dispose();
    c5.dispose();
    c6.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const int multiplier = 5;
    var rnd = RndDigit.randomEven(count: multiplier);
    int digit = rnd.number;
    var result = numberToList(digit * multiplier);

    return Scaffold(
      appBar: AppBar(
        title: Text("Workout"),
        centerTitle: true,
        leading: BackWidget(page: KAppPages.oddsByFiveExplication),
      ),

      // floatingActionButton: FabWidget(page: KAppPages.oddsByFiveMultiplication,),
      body: Column(
        children: [
          SizedBox(height: 10),
          Text('$digit x5', style: KTextStyle.digit(context)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OneDigitField(
                focusNode: f6,
                nextFocus: null,
                prevFocus: f5,
                controller: c6,
                result: result[0],
              ),
              OneDigitField(
                focusNode: f5,
                nextFocus: f6,
                prevFocus: f4,
                controller: c5,
                result: result[1],
              ),
              OneDigitField(
                focusNode: f4,
                nextFocus: f5,
                prevFocus: f3,
                controller: c4,
                result: result[2],
              ),
              OneDigitField(
                focusNode: f3,
                nextFocus: f4,
                prevFocus: f2,
                controller: c3,
                result: result[3],
              ),
              OneDigitField(
                focusNode: f2,
                nextFocus: f3,
                prevFocus: f1,
                controller: c2,
                result: result[4],
              ),
              OneDigitField(
                focusNode: f1,
                nextFocus: f2,
                prevFocus: null,
                controller: c1,
                result: result[5],
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
              listToDigit([
                int.tryParse(c6.text) ?? 0,
                int.tryParse(c5.text) ?? 0,
                int.tryParse(c4.text) ?? 0,
                int.tryParse(c3.text) ?? 0,
                int.tryParse(c2.text) ?? 0,
                int.tryParse(c1.text) ?? 0,
              ]).toString()
          ),
          Text('Your answer ${c6.text}', style: KTextStyle.body(context)),
        ],
      ),
    );
  }
}
