int listToDigit(List<int> array) {
  int digit = 0;

  for (int i = 0; i < array.length; i++) {
    digit = digit * 10 + array[i];
  }
  return digit;
}
