List<int> numberToList(int number) {
  return number
      .toString()
      .split('')
      .map((digit) => int.parse(digit))
      .toList();
}
