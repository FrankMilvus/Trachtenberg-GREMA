// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'NeuroCalT+';

  @override
  String get hello =>
      'Bienvenido a NeuroCalT+, tu entrenador personal para dominar los números.\n\nNuestra aplicación está diseñada para fortalecer tus habilidades diarias de aritmética mientras te introduce al poder del Sistema Trachtenberg. Tanto si buscas mejorar tus bases matemáticas como enfrentarte a cálculos mentales de alta velocidad, NeuroCalT+ te ofrece las herramientas para transformar la forma en que procesas los números.';

  @override
  String get whatIsThisApp => '¿Qué es esta aplicación?';

  @override
  String get oddsByFiveExplanation =>
      'Regla: Para multiplicar un número por 5 usando este método:👉 Toma la mitad del dígito siguiente (el “vecino”).\n👉 Si el dígito actual es impar, suma 5 al resultado.\nEjemplo: Multiplicar 426 × 5\nEscribimos el número con un cero a la izquierda para facilitar el proceso:\n0 4 2 6 × 5\nAhora procesa cada dígito de derecha a izquierda:\n1️⃣ Último dígito: 6\nEl vecino no existe (trátalo como 0).\n6 es par, así que no sumamos 5.\nResultado: 3 (mitad de 6)\n2️⃣ Siguiente dígito: 2\nEl vecino es 6 → la mitad de 6 es 3\n2 es par, así que no sumamos nada.\nResultado: 3\n3️⃣ Siguiente dígito: 4\nEl vecino es 2 → la mitad de 2 es 1\n4 es par, así que no hay +5\nResultado: 1\n4️⃣ Primer dígito: 0\nEl vecino es 4 → la mitad de 4 es 2\n0 es par\nResultado: 2\nRespuesta Final\nLeyendo los resultados de izquierda a derecha:\n426 × 5 = 2130\n';

  @override
  String get wantMore =>
      '¡Hola, me alegra verte aquí!\n\nLo que pasa es que es solo mi proyecto personal para entender mejor cómo funciona Flutter. No estoy seguro de si es útil o no, creo que hay aplicaciones mucho mejores que esta y puedo implementar todas las funciones en esta aplicación, pero no me enseñan nada nuevo. Pero si quieres que añada más, solo deja un comentario en Google Play y escribe qué más te gustaría)';

  @override
  String get warmUp => 'Calentamiento';

  @override
  String yourAnswer(String answer) {
    return 'Tu respuesta: $answer';
  }

  @override
  String get correct => '¡✔ Correcto!';

  @override
  String get wrong => '✖ Incorrecto';

  @override
  String get oddsByFive => 'Impares por cinco';

  @override
  String get workout => 'Entrenamiento';

  @override
  String get wantMoreTitle => '¿Quieres más?';

  @override
  String get next => 'Siguiente';

  @override
  String get back => 'Atrás';

  @override
  String get home => 'Inicio';

  @override
  String get enterAnswer => 'Ingrese su respuesta aquí';

  @override
  String get language => 'Idioma';

  @override
  String get plus_boosts_speed_title => '⚡ Mejora la rapidez y agilidad mental';

  @override
  String get plus_boosts_speed_desc =>
      'La aritmética rápida entrena al cerebro para procesar información más rápido y responder con mayor eficiencia.';

  @override
  String get plus_strengthens_memory_title =>
      '🧩 Fortalece la memoria de trabajo';

  @override
  String get plus_strengthens_memory_desc =>
      'Los cálculos mentales mejoran la capacidad de retener, manipular y recordar información.';

  @override
  String get plus_focus_title => '🎯 Mejora el enfoque y la concentración';

  @override
  String get plus_focus_desc =>
      'Los ejercicios breves de aritmética entrenan la atención sostenida y reducen la distracción mental.';

  @override
  String get plus_logical_title => '🔍 Potencia el pensamiento lógico';

  @override
  String get plus_logical_desc =>
      'La práctica regular desarrolla habilidades de razonamiento que se aplican a la resolución de problemas cotidianos.';

  @override
  String get plus_brain_health_title =>
      '🛡️ Favorece la salud cerebral a largo plazo';

  @override
  String get plus_brain_health_desc =>
      'La estimulación mental diaria ayuda a mantener la agudeza cognitiva y la resiliencia con el tiempo.';

  @override
  String get plus_confidence_title => '✅ Aumenta la confianza';

  @override
  String get plus_confidence_desc =>
      'Completar cálculos con éxito aumenta la confianza en tus capacidades mentales.';

  @override
  String get plus_reduces_noise_title => '🧘 Reduce el ruido mental';

  @override
  String get plus_reduces_noise_desc =>
      'Centrarse en números ayuda a calmar pensamientos repetitivos y reduce el estrés mental leve.';

  @override
  String get plus_why_title => '🌟 Por qué funciona';

  @override
  String get plus_why_1 => '✅ Solo 5 minutos al día';

  @override
  String get plus_why_2 => '✅ Fácil de mantener';

  @override
  String get plus_why_3 => '✅ Sin calculadoras';

  @override
  String get plus_why_4 => '✅ Gran impacto cognitivo';

  @override
  String get read_more => 'Leer más';

  @override
  String get read_less => 'Leer menos';
}
