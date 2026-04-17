import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('ru'),
  ];

  /// Main app title shown in the app bar and drawer header
  ///
  /// In en, this message translates to:
  /// **'NeuroCalT+'**
  String get appTitle;

  /// Intro text shown on the welcome page
  ///
  /// In en, this message translates to:
  /// **'Welcome to NeuroCalT+, your personal trainer for mastering numbers.\n\nOur app is built to sharpen your daily arithmetic skills while introducing you to the power of the Trachtenberg System. Whether you are looking to polish your basic math or tackle high-speed mental calculations, NeuroCalT+ provides the tools to transform how you process numbers.'**
  String get hello;

  /// Title for the screen that explains the app
  ///
  /// In en, this message translates to:
  /// **'What is this app?'**
  String get whatIsThisApp;

  /// Instructional explanation text for the multiply-by-five method
  ///
  /// In en, this message translates to:
  /// **'Rule: To multiply a number by 5 using\nthis method:👉 Take half of the next digit (the “neighbor”).\n👉 If the current digit is odd, add 5 to the result.\nExample: Multiply 426 × 5\nWe write the number with a leading zero to make the process easier:\n0 4 2 6 × 5\nNow process each digit from right to left:\n1️⃣ Last digit: 6\nThe neighbor does not exist (treat it as 0).\n6 is even, so we do not add 5.\nResult: 3 (half of 6)\n2️⃣ Next digit: 2\nNeighbor is 6 → half of 6 is 3\n2 is even, so add nothing.\nResult: 3\n3️⃣ Next digit: 4\nNeighbor is 2 → half of 2 is 1\n4 is even, so no +5\nResult: 1\n4️⃣ First digit: 0\nNeighbor is 4 → half of 4 is 2\n0 is even\nResult: 2\nFinal Answer\nReading results left → right:\n426 × 5 = 2130\n'**
  String get oddsByFiveExplanation;

  /// Long text shown on the Want More page
  ///
  /// In en, this message translates to:
  /// **'Hello I am glad to see u here!!\n\nThe thing is that it is only my pet project to understand better how Flutter works\nI am not sure it is useful or not I think that it a much more good apps that this one\nand I can realize all functions in this app but they does not teach me something new\nbut If you want I add more - just make comment in Google Play and write what\n do u wanna more)'**
  String get wantMore;

  /// Menu label for the warm-up section
  ///
  /// In en, this message translates to:
  /// **'Warm up'**
  String get warmUp;

  /// Label that displays the current user answer
  ///
  /// In en, this message translates to:
  /// **'Your answer: {answer}'**
  String yourAnswer(String answer);

  /// Feedback text shown for a correct answer
  ///
  /// In en, this message translates to:
  /// **'✔ Correct!'**
  String get correct;

  /// Feedback text shown for an incorrect answer
  ///
  /// In en, this message translates to:
  /// **'✖ Wrong'**
  String get wrong;

  /// Menu label for the odds-by-five explanation page
  ///
  /// In en, this message translates to:
  /// **'Odds by 5'**
  String get oddsByFive;

  /// Menu label for the workout section
  ///
  /// In en, this message translates to:
  /// **'Work out'**
  String get workout;

  /// Menu label for the Want More page
  ///
  /// In en, this message translates to:
  /// **'Want more?'**
  String get wantMoreTitle;

  /// Label for next page action
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// Label for back page action
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// Menu label for home screen
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// Hint text for answer input field
  ///
  /// In en, this message translates to:
  /// **'Enter answer here'**
  String get enterAnswer;

  /// Label for language selector
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en', 'es', 'fr', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
