import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OneDigitField extends StatelessWidget {
  final FocusNode focusNode;
  final FocusNode? nextFocus;
  final TextEditingController controller;

  const OneDigitField({
    super.key,
    required this.focusNode,
    this.nextFocus,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextField(
        focusNode: focusNode,
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
          if (value.isNotEmpty && nextFocus != null) {
            FocusScope.of(context).requestFocus(nextFocus);
          }
        },
      ),
    );
  }
}
