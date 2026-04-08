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
      // Generate a random even number in [min, max]
      // Ensure the range contains at least one even number
      int start = min.isEven ? min : min + 1;
      int end = max.isEven ? max : max - 1;

      if (start > end) {
        digits.add(start); // Fallback
      } else {
        int evenCount = ((end - start) ~/ 2) + 1;
        int n = start + (random.nextInt(evenCount) * 2);
        digits.add(n);
      }
    }

    // Ensure the first digit is not zero to maintain the requested digit count
    if (digits[0] == 0) {
      digits[0] = 2 + (random.nextInt(4) * 2); // Random even 2, 4, 6, 8
    }

    int number = listToDigit(digits);
    return EvenNumberResult(digits, number);
  }

  static int randomNumber({required int max}) {
    final random = Random();

    return random.nextInt(max);
  }
}
