import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/constants/btn_styles.dart';
import 'package:trachtenberg_grema/data/notifiers.dart';
import 'package:trachtenberg_grema/helper/digit_helper.dart';
import 'package:trachtenberg_grema/widgets/warmup_answer_widget.dart';

import '../../constants/app_pages.dart';
import '../../constants/operation.dart';
import '../../constants/text_styles.dart';
import '../../widgets/back_widget.dart';
import '../../widgets/fab_widget.dart';

class WarmUp extends StatefulWidget {
  const WarmUp({super.key});

  @override
  State<WarmUp> createState() => _WarmUpState();
}

class _WarmUpState extends State<WarmUp> {
  Operation _selectedOperation = Operation.add;
  int _firstNumber = 0;
  int _secondNumber = 0;
  final controller = TextEditingController();
  ValueNotifier<bool> isTextCorrectNotifier = ValueNotifier(false);

  bool isFirstMax = false;
  bool isSecondMax = false;

  void generateNewTask() {
    setState(() {
      _firstNumber = DigitHelper.randomNumber(max: isFirstMax ? 100 : 10);
      _secondNumber = DigitHelper.randomNumber(max: isSecondMax ? 100 : 10);
      controller.clear();
      isTextCorrect.value = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Warm up"),
        centerTitle: true,
        leading: BackWidget(page: KAppPages.home),
      ),
      floatingActionButton: FabWidget(page: KAppPages.oddsByFiveExplication),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: KBtnStyle.operatorButton(
                    current: _selectedOperation,
                    button: Operation.add,
                  ),
                  onPressed: () {
                    setState(() => _selectedOperation = Operation.add);
                  },
                  child: Text(Operation.add.symbol),
                ),

                OutlinedButton(
                    style: KBtnStyle.operatorButton(
                      current: _selectedOperation,
                      button: Operation.subtract,
                    ),
                  onPressed: () {
                    setState(() => _selectedOperation = Operation.subtract);
                  },
                  child: Text(Operation.subtract.symbol),
                ),
                OutlinedButton(
                  style: KBtnStyle.operatorButton(
                    current: _selectedOperation,
                    button: Operation.multiply,
                  ),
                  onPressed: () {
                    setState(() => _selectedOperation = Operation.multiply);
                  },
                  child: Text(Operation.multiply.symbol),
                ),
                OutlinedButton(
                  style: KBtnStyle.operatorButton(
                    current: _selectedOperation,
                    button: Operation.divide,
                  ),
                  onPressed: () {
                    setState(() => _selectedOperation = Operation.divide);
                  },
                  child: Text(Operation.divide.symbol),
                ),
                OutlinedButton(
                    style: KBtnStyle.operatorButton(
                      current: _selectedOperation,
                      button: Operation.modulo,
                    ),
                  onPressed: () {
                    setState(() => _selectedOperation = Operation.modulo);
                  },
                  child: Text(Operation.modulo.symbol),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  style: KBtnStyle.rangeButton(),
                  onPressed: () {
                    setState(() {
                      isFirstMax = false;
                    });
                    generateNewTask();
                  },
                  child: Text('0 - 9'),
                ),
                OutlinedButton(
                  style: KBtnStyle.rangeButton(),
                  onPressed: () {
                    setState(() {
                      isSecondMax = false;
                      generateNewTask();
                    });
                  },
                  child: Text('0 - 9'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  style: KBtnStyle.rangeButton(),
                  onPressed: () {
                    setState(() {
                      isFirstMax = true;
                      generateNewTask();
                    });
                  },
                  child: Text('0 - 99'),
                ),
                OutlinedButton(
                  style: KBtnStyle.rangeButton(),
                  onPressed: () {
                    setState(() {
                      isSecondMax = true;
                      generateNewTask();
                    });
                  },
                  child: Text('0 - 99'),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              '$_firstNumber ${_selectedOperation.symbol} $_secondNumber = ???',

              style: KTextStyle.digit(context),
            ),
            WarmupAnswerWidget(
              controller: controller,
              result: _selectedOperation.calculate(_firstNumber, _secondNumber),
              isTextCorrectNotifier: isTextCorrect,
              onSubmit: () {
                generateNewTask();
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
