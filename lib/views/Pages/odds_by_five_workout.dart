import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/constants/app_pages.dart';
import 'package:trachtenberg_grema/helper/digit_helper.dart';
import 'package:trachtenberg_grema/widgets/one_digit_field.dart';

import '../../constants/text_styles.dart';
import '../../widgets/back_widget.dart';
import '../../widgets/fab_widget.dart';

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
  final refreshBtnFocus = FocusNode();
  final clearBtnFucus = FocusNode();

  final c1 = TextEditingController();
  final c2 = TextEditingController();
  final c3 = TextEditingController();
  final c4 = TextEditingController();
  final c5 = TextEditingController();
  final c6 = TextEditingController();

  int digit = 0;
  List<int> result = [];

  void generateNewTask() {
    const int multiplier = 5;
    final rnd = DigitHelper.randomEven(count: multiplier);

    setState(() {
      digit = rnd.number;
      result = DigitHelper.numberToList(digit * multiplier);

      c1.clear();
      c2.clear();
      c3.clear();
      c4.clear();
      c5.clear();
      c6.clear();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      f1.requestFocus();
    });
  }

  @override
  void initState() {
    super.initState();

    generateNewTask();

    void listener() => setState(() {});

    c1.addListener(listener);
    c2.addListener(listener);
    c3.addListener(listener);
    c4.addListener(listener);
    c5.addListener(listener);
    c6.addListener(listener);
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

  int get userAnswer {
    return DigitHelper.listToDigit([
      int.tryParse(c6.text) ?? 0,
      int.tryParse(c5.text) ?? 0,
      int.tryParse(c4.text) ?? 0,
      int.tryParse(c3.text) ?? 0,
      int.tryParse(c2.text) ?? 0,
      int.tryParse(c1.text) ?? 0,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final correctAnswer = digit * 5;
    final isCorrect = userAnswer == correctAnswer;

    return Scaffold(
      appBar: AppBar(
        title: Text("Workout"),
        centerTitle: true,
        leading: BackWidget(page: KAppPages.oddsByFiveExplication),
      ),

      floatingActionButton: FabWidget(page: KAppPages.wantMore),
      body: Column(
        children: [
          SizedBox(height: 10),
          Text('$digit x5', style: KTextStyle.digit(context)),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OneDigitField(
                focusNode: f6,
                nextFocus: isCorrect ? clearBtnFucus : refreshBtnFocus,
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
          SizedBox(height: 15),

          Text("Your answer: $userAnswer", style: KTextStyle.body(context)),
          SizedBox(height: 10),
          Text(
            isCorrect ? "✔ Correct!" : "✖ Wrong",
            style: KTextStyle.body(context).copyWith(
              color: isCorrect ? Colors.green : Colors.red,
              fontSize: 22,
            ),
          ),

          Spacer(),
          OutlinedButton(
            focusNode: refreshBtnFocus,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 34),
            ),
            onPressed: () {
              generateNewTask();
            },
            child: Icon(Icons.refresh),
          ),
          SizedBox(height: 40.0)
        ],
      ),
    );
  }
}
