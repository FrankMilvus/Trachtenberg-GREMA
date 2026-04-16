// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'NeuroCalT+';

  @override
  String get hello =>
      'Привет, ребята! Я рад видеть вас здесь! Это приложение — мой личный проект. Основная цель — создать песочницу для тренировки навыков быстрого ментального счета.';

  @override
  String get whatIsThisApp => 'Что это за приложение?';

  @override
  String get oddsByFiveExplanation =>
      'Правило: Чтобы умножить число на 5 по этому методу:👉 Возьмите половину следующей цифры («соседа»).\n👉 Если текущая цифра нечетная, прибавьте 5 к результату.\nПример: Умножить 426 × 5\nЗаписываем число с ведущим нулем:\n0 4 2 6 × 5\nТеперь обрабатываем каждую цифру справа налево:\n1️⃣ Последняя цифра: 6\nСоседа нет (считаем его 0).\n6 — четное, поэтому 5 не прибавляем.\nРезультат: 3 (половина от 6)\n2️⃣ Следующая цифра: 2\nСосед — 6 → половина от 6 равна 3\n2 — четное, ничего не прибавляем.\nРезультат: 3\n3️⃣ Следующая цифра: 4\nСосед — 2 → половина от 2 равна 1\n4 — четное, +5 не нужно\nРезультат: 1\n4️⃣ Первая цифра: 0\nСосед — 4 → половина от 4 равна 2\n0 — четное\nРезультат: 2\nИтоговый ответ\nЧитаем результаты слева направо:\n426 × 5 = 2130\n';

  @override
  String get wantMore =>
      'Привет, я рад тебя здесь видеть!!\n\nЭто просто мой личный проект, чтобы лучше понять, как работает Flutter. Я не уверен, полезен он или нет, думаю, есть приложения гораздо лучше этого. Но если вы хотите, чтобы я добавил больше — просто оставьте комментарий в Google Play.';

  @override
  String get warmUp => 'Разминка';

  @override
  String yourAnswer(String answer) {
    return 'Ваш ответ: $answer';
  }

  @override
  String get correct => '✔ Правильно!';

  @override
  String get wrong => '✖ Неправильно';

  @override
  String get oddsByFive => 'Нечетные на 5';

  @override
  String get workout => 'Тренировка';

  @override
  String get wantMoreTitle => 'Хотите больше?';

  @override
  String get home => 'Главная';

  @override
  String get enterAnswer => 'Введите ответ здесь';

  @override
  String get language => 'Язык';
}
