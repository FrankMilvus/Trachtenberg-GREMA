import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trachtenberg_grema/constants/btn_styles.dart';
import 'package:trachtenberg_grema/helper/digit_helper.dart';
import 'package:trachtenberg_grema/providers/app_provider.dart';
import 'package:trachtenberg_grema/widgets/warmup_answer_widget.dart';

import '../../constants/operation.dart';
import '../../constants/text_styles.dart';

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

  bool isFirstMax = false;
  bool isSecondMax = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      generateNewTask();
    });
  }

  void generateNewTask() {
    setState(() {
      _firstNumber = DigitHelper.randomNumber(max: isFirstMax ? 100 : 10);
      _secondNumber = DigitHelper.randomNumber(max: isSecondMax ? 100 : 10);
      controller.clear();
      context.read<AppProvider>().setTextCorrect(false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                style: KBtnStyle.operatorButton(
                  context: context,
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
                  context: context,
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
                  context: context,
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
                  context: context,
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
                  context: context,
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
                style: KBtnStyle.rangeButton(context),
                onPressed: () {
                  setState(() {
                    isFirstMax = false;
                  });
                  generateNewTask();
                },
                child: const Text('0 - 9'),
              ),
              OutlinedButton(
                style: KBtnStyle.rangeButton(context),
                onPressed: () {
                  setState(() {
                    isSecondMax = false;
                    generateNewTask();
                  });
                },
                child: const Text('0 - 9'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                style: KBtnStyle.rangeButton(context),
                onPressed: () {
                  setState(() {
                    isFirstMax = true;
                    generateNewTask();
                  });
                },
                child: const Text('0 - 99'),
              ),
              OutlinedButton(
                style: KBtnStyle.rangeButton(context),
                onPressed: () {
                  setState(() {
                    isSecondMax = true;
                    generateNewTask();
                  });
                },
                child: const Text('0 - 99'),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            '$_firstNumber ${_selectedOperation.symbol} $_secondNumber = ???',
            style: KTextStyle.digit(context),
          ),
          WarmupAnswerWidget(
            controller: controller,
            result: _selectedOperation.calculate(_firstNumber, _secondNumber),
            onSubmit: () {
              generateNewTask();
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
