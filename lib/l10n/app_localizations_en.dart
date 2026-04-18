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
      'Welcome to NeuroCalT+, your personal trainer for mastering numbers.\n\nOur app is built to sharpen your daily arithmetic skills while introducing you to the power of the Trachtenberg System. Whether you are looking to polish your basic math or tackle high-speed mental calculations, NeuroCalT+ provides the tools to transform how you process numbers.';

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
  String get next => 'Next';

  @override
  String get back => 'Back';

  @override
  String get home => 'Home';

  @override
  String get enterAnswer => 'Enter answer here';

  @override
  String get language => 'Language';

  @override
  String get plus_boosts_speed_title => '⚡ Boosts mental speed and agility';

  @override
  String get plus_boosts_speed_desc =>
      'Quick arithmetic trains the brain to process information faster and respond more efficiently.';

  @override
  String get plus_strengthens_memory_title => '🧩 Strengthens working memory';

  @override
  String get plus_strengthens_memory_desc =>
      'Mental calculations improve the ability to hold, manipulate, and recall information.';

  @override
  String get plus_focus_title => '🎯 Improves focus and concentration';

  @override
  String get plus_focus_desc =>
      'Short arithmetic exercises train sustained attention and reduce mental distraction.';

  @override
  String get plus_logical_title => '🔍 Enhances logical thinking';

  @override
  String get plus_logical_desc =>
      'Regular practice develops reasoning skills that transfer to everyday problem-solving.';

  @override
  String get plus_brain_health_title => '🛡️ Supports long-term brain health';

  @override
  String get plus_brain_health_desc =>
      'Daily mental stimulation helps maintain cognitive sharpness and resilience over time.';

  @override
  String get plus_confidence_title => '✅ Builds confidence';

  @override
  String get plus_confidence_desc =>
      'Successfully completing calculations increases confidence in your mental abilities.';

  @override
  String get plus_reduces_noise_title => '🧘 Reduces mental noise';

  @override
  String get plus_reduces_noise_desc =>
      'Focusing on numbers helps quiet repetitive thoughts and lowers mild mental stress.';

  @override
  String get plus_why_title => '🌟 Why it works';

  @override
  String get plus_why_1 => '✅ Only 5 minutes a day';

  @override
  String get plus_why_2 => '✅ Easy to maintain';

  @override
  String get plus_why_3 => '✅ No calculators';

  @override
  String get plus_why_4 => '✅ Big cognitive impact';

  @override
  String get read_more => 'Read more';

  @override
  String get read_less => 'Read less';
}
