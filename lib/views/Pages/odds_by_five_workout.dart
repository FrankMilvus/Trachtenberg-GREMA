import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/constants/app_pages.dart';
import 'package:trachtenberg_grema/helper/digit_helper.dart';
import 'package:trachtenberg_grema/l10n/app_localizations.dart';
import 'package:trachtenberg_grema/widgets/multi_digit_input.dart';

import '../../constants/text_styles.dart';
import '../../widgets/back_widget.dart';
import '../../widgets/fab_widget.dart';

class OddsByFiveWorkout extends StatefulWidget {
  const OddsByFiveWorkout({super.key});

  @override
  State<OddsByFiveWorkout> createState() => _OddsByFiveWorkoutState();
}

class _OddsByFiveWorkoutState extends State<OddsByFiveWorkout> {
  final GlobalKey<MultiDigitInputState> _inputKey = GlobalKey<MultiDigitInputState>();
  int digit = 0;
  List<int> result = [];
  int userAnswer = 0;

  void generateNewTask() {
    const int multiplier = 5;
    final rnd = DigitHelper.randomEven(count: multiplier);

    setState(() {
      digit = rnd.number;
      result = DigitHelper.numberToList(digit * multiplier);
      userAnswer = 0;
    });

    _inputKey.currentState?.clear();
  }

  @override
  void initState() {
    super.initState();
    generateNewTask();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final correctAnswer = digit * 5;
    final isCorrect = userAnswer == correctAnswer;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.workout),
        centerTitle: true,
        leading: const BackWidget(page: KAppPages.oddsByFiveExplication),
      ),
      floatingActionButton: const FabWidget(page: KAppPages.wantMore),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Text('$digit x5', style: KTextStyle.digit(context)),
          const SizedBox(height: 15),
          MultiDigitInput(
            key: _inputKey,
            digitCount: 6,
            expectedResult: result,
            onChanged: (value) {
              setState(() {
                userAnswer = value;
              });
            },
          ),
          const SizedBox(height: 15),
          Text(l10n.yourAnswer(userAnswer.toString()), style: KTextStyle.body(context)),
          const SizedBox(height: 10),
          Text(
            isCorrect ? l10n.correct : l10n.wrong,
            style: KTextStyle.body(context).copyWith(
              color: isCorrect
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.error,
              fontSize: 22,
            ),
          ),
          const Spacer(),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 34),
            ),
            onPressed: () {
              generateNewTask();
            },
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(height: 40.0)
        ],
      ),
    );
  }
}
