import 'dart:math';

class EvenNumberResult {
  final List<int> digits;
  final int number;

  EvenNumberResult(this.digits, this.number);
}


class DigitHelper {
  static List<int> numberToList(int number) {
    return number
        .toString()
        .split('')
        .map((digit) => int.parse(digit))
        .toList();
  }

  static int listToDigit(List<int> list) {
    int digit = 0;

    for (int i = 0; i < list.length; i++) {
      digit = digit * 10 + list[i];
    }
    return digit;
  }

  static EvenNumberResult randomEven({
    required int count,
    int min = 0,
    int max = 10,
  }) {
    final random = Random();

    List<int> digits = [];

    for (int i = 0; i < count; i++) {
      int n = random.nextInt(max - min + 1) + min;
      if (n.isOdd) n++;
      if (n > max) n -= 2;
      if (n == 10) n -= 2;
      digits.add(n);
    }

    if (digits[0] == 0) digits[0] += 2;

    int number = listToDigit(digits);

    return EvenNumberResult(digits, number);
  }
}
