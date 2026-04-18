// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'NeuroCalT+';

  @override
  String get hello =>
      'Bienvenue sur NeuroCalT+, votre entraîneur personnel pour maîtriser les nombres.\n\nNotre application est conçue pour affûter vos compétences quotidiennes en arithmétique tout en vous initiant à la puissance du système Trachtenberg. Que vous cherchiez à consolider vos bases en mathématiques ou à relever le défi du calcul mental à grande vitesse, NeuroCalT+ vous offre les outils pour transformer votre manière de traiter les nombres.';

  @override
  String get whatIsThisApp => 'C\'est quoi cette application ?';

  @override
  String get oddsByFiveExplanation =>
      'Règle : Pour multiplier un nombre par 5 en utilisant cette méthode :👉 Prenez la moitié du chiffre suivant (le « voisin »).\n👉 Si le chiffre actuel est impair, ajoutez 5 au résultat.\nExemple : Multiplier 426 × 5\nOn écrit le nombre avec un zéro de tête :\n0 4 2 6 × 5\nMaintenant, traitez chaque chiffre de droite à gauche :\n1️⃣ Dernier chiffre : 6\nLe voisin n\'existe pas (traitez-le comme 0).\n6 est pair, donc on n\'ajoute pas 5.\nRésultat : 3 (la moitié de 6)\n2️⃣ Chiffre suivant : 2\nLe voisin est 6 → la moitié de 6 est 3\n2 est pair, donc on n\'ajoute rien.\nRésultat : 3\n3️⃣ Chiffre suivant : 4\nLe voisin est 2 → la moitié de 2 est 1\n4 est pair, donc pas de +5\nRésultat : 1\n4️⃣ Premier chiffre : 0\nLe voisin est 4 → la moitié de 4 est 2\n0 est pair\nRésultat : 2\nRésultat Final\nLecture des résultats de gauche à droite :\n426 × 5 = 2130\n';

  @override
  String get wantMore =>
      'Bonjour, je suis ravi de vous voir ici !!\n\nC\'est juste mon projet personnel pour mieux comprendre comment Flutter fonctionne. Je ne sais pas si c\'est utile ou non, je pense qu\'il y a de bien meilleures applications que celle-ci. Mais si vous voulez que j\'en ajoute plus, laissez simplement un commentaire sur Google Play.';

  @override
  String get warmUp => 'Échauffement';

  @override
  String yourAnswer(String answer) {
    return 'Votre réponse : $answer';
  }

  @override
  String get correct => '✔ Correct !';

  @override
  String get wrong => '✖ Faux';

  @override
  String get oddsByFive => 'Impairs par 5';

  @override
  String get workout => 'Entraînement';

  @override
  String get wantMoreTitle => 'Voulez-vous plus ?';

  @override
  String get next => 'Suivant';

  @override
  String get back => 'Retour';

  @override
  String get home => 'Accueil';

  @override
  String get enterAnswer => 'Entrez votre réponse ici';

  @override
  String get language => 'Langue';

  @override
  String get plus_boosts_speed_title =>
      '⚡ Améliore la vitesse et l\'agilité mentales';

  @override
  String get plus_boosts_speed_desc =>
      'Le calcul rapide entraîne le cerveau à traiter l\'information plus vite et à réagir plus efficacement.';

  @override
  String get plus_strengthens_memory_title =>
      '🧩 Renforce la mémoire de travail';

  @override
  String get plus_strengthens_memory_desc =>
      'Les calculs mentaux améliorent la capacité à retenir, manipuler et rappeler des informations.';

  @override
  String get plus_focus_title => '🎯 Améliore la concentration et l\'attention';

  @override
  String get plus_focus_desc =>
      'De courts exercices d\'arithmétique entraînent l\'attention soutenue et réduisent les distractions mentales.';

  @override
  String get plus_logical_title => '🔍 Développe la pensée logique';

  @override
  String get plus_logical_desc =>
      'Une pratique régulière développe des capacités de raisonnement utiles pour résoudre les problèmes du quotidien.';

  @override
  String get plus_brain_health_title =>
      '🛡️ Favorise la santé cérébrale à long terme';

  @override
  String get plus_brain_health_desc =>
      'La stimulation mentale quotidienne aide à maintenir la vivacité cognitive et la résilience dans le temps.';

  @override
  String get plus_confidence_title => '✅ Renforce la confiance en soi';

  @override
  String get plus_confidence_desc =>
      'Réussir des calculs augmente la confiance dans ses capacités mentales.';

  @override
  String get plus_reduces_noise_title => '🧘 Réduit le bruit mental';

  @override
  String get plus_reduces_noise_desc =>
      'Se concentrer sur les nombres aide à apaiser les pensées répétitives et à réduire un stress mental léger.';

  @override
  String get plus_why_title => '🌟 Pourquoi ça marche';

  @override
  String get plus_why_1 => '✅ Seulement 5 minutes par jour';

  @override
  String get plus_why_2 => '✅ Facile à maintenir';

  @override
  String get plus_why_3 => '✅ Sans calculatrice';

  @override
  String get plus_why_4 => '✅ Fort impact cognitif';

  @override
  String get read_more => 'Afficher plus';

  @override
  String get read_less => 'Afficher moins';
}
