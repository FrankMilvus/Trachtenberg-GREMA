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
}
