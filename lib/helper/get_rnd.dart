import 'dart:math';

class EvenNumberResult {
  final List<int> digits;
  final int number;

  EvenNumberResult(this.digits, this.number);
}

class RndDigit {
  static final _random = Random();

  static EvenNumberResult randomEven({
    required int count,
    int min = 0,
    int max = 10,
  }) {
    List<int> digits = [];

    for (int i = 0; i < count; i++) {
      int n = _random.nextInt(max - min + 1) + min;
      if (n.isOdd) n++;
      if (n > max) n -= 2;
      if (n == 10) n -= 2;
      digits.add(n);
    }

    if (digits[0] == 0) digits[0] += 2;

    int number = arrayToDigit(digits);

    return EvenNumberResult(digits, number);
  }
}

int arrayToDigit(List<int> array) {
  int digit = 0;

  for (int i = 0; i < array.length; i++) {
    digit = digit * 10 + array[i];
  }
  return digit;
}
