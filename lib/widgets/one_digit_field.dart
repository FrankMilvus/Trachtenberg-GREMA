import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OneDigitField extends StatelessWidget {
  const OneDigitField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: TextField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        maxLength: 1,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1),
        ],
        textAlign: TextAlign.center,
      ),
    );
  }
}
