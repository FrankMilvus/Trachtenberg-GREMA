


class KAppStrings {
  static const howSimpleAnyToFive = 'Here should be description how to simple multiplay'
      ' any 2468 to 5';
  static const oddsByFiveMultiplicationExplanation = 'Rule: To multiply a number by 5 using\n'
      'this method:'
      '👉 Take half of the next digit (the “neighbor”).\n'
      '👉 If the current digit is odd, add 5 to the result.\n'
      'Example: Multiply 426 × 5\n'
      'We write the number with a leading zero to make the process easier:\n'
      '0 4 2 6 × 5\n'
      'Now process each digit from right to left:\n'
      '1️⃣ Last digit: 6\n'
      'The neighbor does not exist (treat it as 0).\n'
      '6 is even, so we do not add 5.\n'
      'Result: 3 (half of 6)\n'
      '2️⃣ Next digit: 2\n'
      'Neighbor is 6 → half of 6 is 3\n'
      '2 is even, so add nothing.\n'
      'Result: 3\n'
      '3️⃣ Next digit: 4\n'
      'Neighbor is 2 → half of 2 is 1\n'
      '4 is even, so no +5\n'
      'Result: 1\n'
      '4️⃣ First digit: 0\n'
      'Neighbor is 4 → half of 4 is 2\n'
      '0 is even\n'
      'Result: 2\n'
      'Final Answer\n'
      'Reading results left → right:\n'
      '426 × 5 = 2130\n';
}
