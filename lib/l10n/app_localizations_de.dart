// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'NeuroCalT+';

  @override
  String get hello =>
      'Willkommen bei NeuroCalT+, deinem persönlichen Trainer zum Meistern von Zahlen.\n\nUnsere App wurde entwickelt, um deine täglichen Rechenfähigkeiten zu schärfen und dir gleichzeitig die Stärke des Trachtenberg-Systems näherzubringen. Egal, ob du deine mathematischen Grundlagen verbessern oder dich an hochschnelle Kopfrechnungen wagen möchtest - NeuroCalT+ bietet dir die Werkzeuge, um die Art und Weise, wie du Zahlen verarbeitest, grundlegend zu verändern.';

  @override
  String get whatIsThisApp => 'Was ist diese App?';

  @override
  String get oddsByFiveExplanation =>
      'Regel: Um eine Zahl mit 5 nach dieser Methode zu multiplizieren:👉 Nimm die Hälfte der nächsten Ziffer (des „Nachbarn“).\n👉 Wenn die aktuelle Ziffer ungerade ist, addiere 5 zum Ergebnis.\nBeispiel: Multipliziere 426 × 5\nWir schreiben die Zahl mit einer führenden Null:\n0 4 2 6 × 5\nJetzt bearbeite jede Ziffer von rechts nach links:\n1️⃣ Letzte Ziffer: 6\nDer Nachbar existiert nicht (als 0 behandeln).\n6 ist gerade, also keine 5 addieren.\nErgebnis: 3 (Hälfte von 6)\n2️⃣ Nächste Ziffer: 2\nNachbar ist 6 → Hälfte von 6 ist 3\n2 ist gerade, also nichts addieren.\nErgebnis: 3\n3️⃣ Nächste Ziffer: 4\nNachbar ist 2 → Hälfte von 2 ist 1\n4 ist gerade, also kein +5\nErgebnis: 1\n4️⃣ Erste Ziffer: 0\nNachbar ist 4 → Hälfte von 4 ist 2\n0 ist gerade\nErgebnis: 2\nEndergebnis\nErgebnisse von links nach rechts lesen:\n426 × 5 = 2130\n';

  @override
  String get wantMore =>
      'Hallo, ich freue mich, dich hier zu sehen!!\n\nEs ist nur mein persönliches Projekt, um besser zu verstehen, wie Flutter funktioniert. Ich bin nicht sicher, ob es nützlich ist oder nicht, ich denke, es gibt viel bessere Apps als diese. Aber wenn du möchtest, dass ich mehr hinzufüge - hinterlasse einfach einen Kommentar im Google Play Store.';

  @override
  String get warmUp => 'Aufwärmen';

  @override
  String yourAnswer(String answer) {
    return 'Deine Antwort: $answer';
  }

  @override
  String get correct => '✔ Richtig!';

  @override
  String get wrong => '✖ Falsch';

  @override
  String get oddsByFive => 'Ungerade mal 5';

  @override
  String get workout => 'Training';

  @override
  String get wantMoreTitle => 'Mehr gewollt?';

  @override
  String get next => 'Weiter';

  @override
  String get back => 'Zurück';

  @override
  String get home => 'Startseite';

  @override
  String get enterAnswer => 'Antwort hier eingeben';

  @override
  String get language => 'Sprache';
}
