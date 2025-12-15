import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/text_styles.dart';

class WarmupAnswerWidget extends StatefulWidget {
  final TextEditingController controller;
  final int result;
  final ValueNotifier<bool> isTextCorrectNotifier;
  final VoidCallback? onSubmit;

  const WarmupAnswerWidget({
    super.key,
    required this.controller,
    required this.result,
    required this.isTextCorrectNotifier,
    this.onSubmit,
  });

  @override
  State<WarmupAnswerWidget> createState() => _WarmupAnswerWidgetState();
}

class _WarmupAnswerWidgetState extends State<WarmupAnswerWidget> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    widget.controller.addListener(() {
      final value = widget.controller.text;
      widget.isTextCorrectNotifier.value =
          value.isNotEmpty && value == widget.result.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: widget.isTextCorrectNotifier,
      builder: (context, isCorrect, child) {
        return Column(
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                focusNode: _focusNode,
                controller: widget.controller,
                style: KTextStyle.answer(context, isCorrect),
                decoration: const InputDecoration(
                  counterText: '',
                  hintText: 'Enter answer here',
                  // border: InputBorder.none,
                ),
                maxLength: 6,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^-?\d*')),
                ],
                textAlign: TextAlign.center,
                onSubmitted: (value) {
                  _focusNode.requestFocus();
                  if (isCorrect && widget.onSubmit != null) {
                    widget.onSubmit!();
                  }
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              isCorrect ? "✔ Correct!" : "✖ Wrong",
              style: KTextStyle.body(context).copyWith(
                color: isCorrect ? Colors.green : Colors.red,
                fontSize: 22,
              ),
            ),
          ],
        );
      },
    );
  }
}
