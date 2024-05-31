import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Mi Aplicación';

  @override
  String get content => 'Hola';

  @override
  String login(String name) {
    String _temp0 = intl.Intl.selectLogic(
      name,
      {
        'loginTitle': 'Bienvenido a CoreCash',
        'loginSubTitle': 'Administre sus ahorros personales.',
        'email': 'Correo electrónico',
        'password': 'Contraseña',
        'rememberMe': 'Recuérdame',
        'forgetPassword': 'Recuperar contraseña?',
        'signIn': 'Iniciar sesión',
        'createAccount': 'Crear cuenta',
        'orSignInWith': 'O inicie sesión con',
        'develop': 'Desarrollado por: Btn Technology',
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
        'titleCard': 'Mis ahorros',
        'myAccount': 'Mi cuenta',
        'collections': 'Recaudos',
        'reports': 'Reportes',
        'credits': 'Créditos',
        'partners': 'Asociados',
        'myCredits': 'Mis créditos',
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
        'home': 'Inicio',
        'settings': 'Ajustes',
        'notifications': 'Notificaciones',
        'other': '',
      },
    );
    return '$_temp0';
  }
}
