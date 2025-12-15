enum Operation { add, subtract, multiply, divide, modulo }

extension OperationX on Operation {
  String get symbol {
    switch (this) {
      case Operation.add:
        return '+';
      case Operation.subtract:
        return '-';
      case Operation.multiply:
        return '*';
      case Operation.divide:
        return '/';
      case Operation.modulo:
        return '%';
    }
  }

  int calculate(int a, int b) {
    switch (this) {
      case Operation.add:
        return (a + b).abs();
      case Operation.subtract:
        return (a - b).abs();
      case Operation.multiply:
        return (a * b).abs();
      case Operation.divide:
        return (b == 0 ? 0 : a ~/ b).abs(); // safe integer division
      case Operation.modulo:
        return (b == 0 ? 0 : a % b).abs(); // safe modulo
    }
  }
}
