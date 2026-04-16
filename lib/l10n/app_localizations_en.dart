// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'NeuroCalT+';

  @override
  String get hello =>
      'Hey guys! I am glad to see any of you here! This app is my pet project. And main target of this app create a sandbox to train fast mental counting skills';

  @override
  String get whatIsThisApp => 'What is this app?';

  @override
  String get oddsByFiveExplanation =>
      'Rule: To multiply a number by 5 using\nthis method:👉 Take half of the next digit (the “neighbor”).\n👉 If the current digit is odd, add 5 to the result.\nExample: Multiply 426 × 5\nWe write the number with a leading zero to make the process easier:\n0 4 2 6 × 5\nNow process each digit from right to left:\n1️⃣ Last digit: 6\nThe neighbor does not exist (treat it as 0).\n6 is even, so we do not add 5.\nResult: 3 (half of 6)\n2️⃣ Next digit: 2\nNeighbor is 6 → half of 6 is 3\n2 is even, so add nothing.\nResult: 3\n3️⃣ Next digit: 4\nNeighbor is 2 → half of 2 is 1\n4 is even, so no +5\nResult: 1\n4️⃣ First digit: 0\nNeighbor is 4 → half of 4 is 2\n0 is even\nResult: 2\nFinal Answer\nReading results left → right:\n426 × 5 = 2130\n';

  @override
  String get wantMore =>
      'Hello I am glad to see u here!!\n\nThe thing is that it is only my pet project to understand better how Flutter works\nI am not sure it is useful or not I think that it a much more good apps that this one\nand I can realize all functions in this app but they does not teach me something new\nbut If you want I add more - just make comment in Google Play and write what\n do u wanna more)';

  @override
  String get warmUp => 'Warm up';

  @override
  String yourAnswer(String answer) {
    return 'Your answer: $answer';
  }

  @override
  String get correct => '✔ Correct!';

  @override
  String get wrong => '✖ Wrong';

  @override
  String get oddsByFive => 'Odds by 5';

  @override
  String get workout => 'Work out';

  @override
  String get wantMoreTitle => 'Want more?';

  @override
  String get home => 'Home';

  @override
  String get enterAnswer => 'Enter answer here';

  @override
  String get language => 'Language';
}
