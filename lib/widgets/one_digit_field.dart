import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/text_styles.dart';

class OneDigitField extends StatefulWidget {
  final FocusNode focusNode;
  final FocusNode? nextFocus;
  final FocusNode? prevFocus;
  final TextEditingController controller;
  final int result;

  // final int? answer;

  const OneDigitField({
    super.key,
    required this.focusNode,
    this.nextFocus,
    this.prevFocus,
    required this.controller,
    required this.result,
    // this.answer,
  });

  @override
  State<OneDigitField> createState() => _OneDigitFieldState();
}

class _OneDigitFieldState extends State<OneDigitField> {
  bool isCorrect = false;

  @override
  void initState() {
    super.initState();

    widget.controller.addListener(() {
      final value = widget.controller.text;

      setState(() {
        isCorrect = (value.isNotEmpty && value == widget.result.toString());
        print("FIELD! $isCorrect");
        print('FIELD! $value');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextField(
        controller: widget.controller,
        style: KTextStyle.answer(context, isCorrect),
        focusNode: widget.focusNode,
        decoration: const InputDecoration(
          counterText: '',
          border: OutlineInputBorder(),
        ),
        maxLength: 1,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1),
        ],
        textAlign: TextAlign.center,
        onChanged: (value) {
          if (value.isNotEmpty && widget.nextFocus != null) {
            FocusScope.of(context).requestFocus(widget.nextFocus);
          } else if (value.isEmpty && widget.prevFocus != null) {
            FocusScope.of(context).requestFocus(widget.prevFocus);
          }
        },
      ),
    );
  }
}
