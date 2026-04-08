import 'package:flutter/material.dart';
import 'package:trachtenberg_grema/widgets/one_digit_field.dart';

class MultiDigitInput extends StatefulWidget {
  final int digitCount;
  final List<int> expectedResult;
  final Function(int) onChanged;
  final VoidCallback? onComplete;

  const MultiDigitInput({
    super.key,
    required this.digitCount,
    required this.expectedResult,
    required this.onChanged,
    this.onComplete,
  });

  @override
  State<MultiDigitInput> createState() => MultiDigitInputState();
}

class MultiDigitInputState extends State<MultiDigitInput> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _initFields();
  }

  void _initFields() {
    _focusNodes = List.generate(widget.digitCount, (_) => FocusNode());
    _controllers = List.generate(widget.digitCount, (_) => TextEditingController());

    for (var controller in _controllers) {
      controller.addListener(_handleChanged);
    }
  }

  @override
  void didUpdateWidget(MultiDigitInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.digitCount != widget.digitCount) {
      _disposeFields();
      _initFields();
    }
  }

  void _disposeFields() {
    for (var node in _focusNodes) {
      node.dispose();
    }
    for (var controller in _controllers) {
      controller.dispose();
    }
  }

  @override
  void dispose() {
    _disposeFields();
    super.dispose();
  }

  void _handleChanged() {
    int value = 0;
    for (int i = widget.digitCount - 1; i >= 0; i--) {
      int digit = int.tryParse(_controllers[i].text) ?? 0;
      value = value * 10 + digit;
    }
    widget.onChanged(value);
  }

  void clear() {
    for (var controller in _controllers) {
      controller.clear();
    }
    _focusNodes[0].requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.digitCount, (index) {
        int revIndex = widget.digitCount - 1 - index;
        return OneDigitField(
          focusNode: _focusNodes[revIndex],
          nextFocus: revIndex == widget.digitCount - 1 ? null : _focusNodes[revIndex + 1],
          prevFocus: revIndex == 0 ? null : _focusNodes[revIndex - 1],
          controller: _controllers[revIndex],
          result: widget.expectedResult[index],
        );
      }),
    );
  }
}
