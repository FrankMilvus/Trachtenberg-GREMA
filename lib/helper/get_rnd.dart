import 'dart:math';

class RndDigit {
  static final _random = Random();

  static List<int> randomEven({required int count, int min = 0, int max = 10}) {
    assert(max >= min);
    int normalDigit= 0;
    List<int> digits = [];


    for (int i = 0; i < count; i++) {
      int n = _random.nextInt(max - min + 1) + min;

      // Make it even
      if (n.isOdd) n++;

      // Ensure we don't exceed max
      if (n > max) n -= 2;

      // _tmpDigit = min + _random.nextInt(max - min + 1);
      print('DIGITS: $n');
      if (n==10) n-=2;
      digits.add(n);

    }
    normalDigit = arrayToDigit(digits);
    print('BIG NORMAL DIGIT $normalDigit');

    if (digits[0]==0) digits[0]+=2;


    print('BIG DIGIT $digits');

    return digits;
  }
}


int arrayToDigit (List<int> array){
  int digit = 0;

  for (int i = 0; i < array.length; i++) {
    digit = digit * 10 + array[i];
  }
  return digit;
}