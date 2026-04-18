import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/constants/text_styles.dart';

class PlusesDescText extends StatelessWidget {
  const PlusesDescText({super.key, required this.firstText, this.secondText});

  final String firstText;
  final String? secondText;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      const SizedBox(height: 8),
      SizedBox(
        width: double.infinity,
        child: Text(
          firstText,
          style: KTextStyle.attention(context),
          textAlign: TextAlign.start,
        ),
      ),
    ];

    if (secondText != null && secondText!.isNotEmpty) {
      children.add(const SizedBox(height: 8));
      children.add(
        SizedBox(
          width: double.infinity,
          child: Text(
            secondText!,
            style: KTextStyle.defaultTextSmall(context),
            textAlign: TextAlign.start,
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
