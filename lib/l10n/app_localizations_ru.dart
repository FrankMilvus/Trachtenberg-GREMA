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
      'Добро пожаловать в NeuroCalT+ - ваш персональный тренер по мастерству работы с числами.\n\nНаше приложение создано, чтобы развивать ваши ежедневные навыки арифметики и одновременно знакомить вас с мощью системы Трахтенберга. Хотите ли вы укрепить базовую математику или освоить высокоскоростные устные вычисления, NeuroCalT+ предоставляет инструменты, которые помогут изменить то, как вы обрабатываете числа.';

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
  String get next => 'Далее';

  @override
  String get back => 'Назад';

  @override
  String get home => 'Главная';

  @override
  String get enterAnswer => 'Введите ответ здесь';

  @override
  String get language => 'Язык';

  @override
  String get plus_boosts_speed_title =>
      '⚡ Повышает скорость и гибкость мышления';

  @override
  String get plus_boosts_speed_desc =>
      'Быстрые арифметические упражнения тренируют мозг быстрее обрабатывать информацию и эффективнее реагировать.';

  @override
  String get plus_strengthens_memory_title => '🧩 Укрепляет рабочую память';

  @override
  String get plus_strengthens_memory_desc =>
      'Устные вычисления улучшают способность удерживать, обрабатывать и воспроизводить информацию.';

  @override
  String get plus_focus_title => '🎯 Улучшает фокус и концентрацию';

  @override
  String get plus_focus_desc =>
      'Короткие арифметические упражнения тренируют устойчивое внимание и снижают умственную отвлекаемость.';

  @override
  String get plus_logical_title => '🔍 Развивает логическое мышление';

  @override
  String get plus_logical_desc =>
      'Регулярная практика развивает навыки рассуждения, которые помогают в решении повседневных задач.';

  @override
  String get plus_brain_health_title =>
      '🛡️ Поддерживает здоровье мозга в долгосрочной перспективе';

  @override
  String get plus_brain_health_desc =>
      'Ежедневная умственная нагрузка помогает сохранять когнитивную остроту и устойчивость со временем.';

  @override
  String get plus_confidence_title => '✅ Повышает уверенность в себе';

  @override
  String get plus_confidence_desc =>
      'Успешное выполнение вычислений повышает уверенность в своих умственных способностях.';

  @override
  String get plus_reduces_noise_title => '🧘 Снижает ментальный шум';

  @override
  String get plus_reduces_noise_desc =>
      'Концентрация на числах помогает успокоить повторяющиеся мысли и снизить легкий ментальный стресс.';

  @override
  String get plus_why_title => '🌟 Почему это работает';

  @override
  String get plus_why_1 => '✅ Всего 5 минут в день';

  @override
  String get plus_why_2 => '✅ Легко поддерживать';

  @override
  String get plus_why_3 => '✅ Без калькуляторов';

  @override
  String get plus_why_4 => '✅ Большой когнитивный эффект';

  @override
  String get read_more => 'Подробнее';

  @override
  String get read_less => 'Свернуть';
}
