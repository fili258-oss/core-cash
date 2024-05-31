import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'My aplication';

  @override
  String get content => 'Hello';

  @override
  String login(String name) {
    String _temp0 = intl.Intl.selectLogic(
      name,
      {
        'loginTitle': 'Welcome to CoreCash',
        'loginSubTitle': 'Manage your personal savings.',
        'email': 'Email adress',
        'password': 'Password',
        'rememberMe': 'Remember me',
        'forgetPassword': 'Lost Password?',
        'signIn': 'Login',
        'createAccount': 'Create account',
        'orSignInWith': 'Or log in with',
        'develop': 'Developed by: Btn Technology',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String myHome(String name) {
    String _temp0 = intl.Intl.selectLogic(
      name,
      {
        'titleCard': 'My savings',
        'myAccount': 'My account',
        'collections': 'Collections',
        'reports': 'Reports',
        'credits': 'Credits',
        'partners': 'Partners',
        'myCredits': 'My credits',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String myMenuBar(String name) {
    String _temp0 = intl.Intl.selectLogic(
      name,
      {
        'home': 'Home',
        'settings': 'Settings',
        'notifications': 'Notifications',
        'other': '',
      },
    );
    return '$_temp0';
  }
}
