import 'package:core_cash/generated/app_localizations.dart';
import 'package:get/get.dart';
class AppText {
  AppText._();

  // Global texts

  // -- Authentication Headings
  static String loginTitle =
      AppLocalizations.of(Get.context!).login('loginTitle');
  static String loginSubTitle =
      AppLocalizations.of(Get.context!).login('loginSubTitle');

  // -- Authentication Forms
  static String email = AppLocalizations.of(Get.context!).login('email');
  static String password = AppLocalizations.of(Get.context!).login('password');
  static String rememberMe =
      AppLocalizations.of(Get.context!).login('rememberMe');
  static String forgetPassword =
      AppLocalizations.of(Get.context!).login('forgetPassword');
  static String signIn = AppLocalizations.of(Get.context!).login('signIn');
  static String createAccount =
      AppLocalizations.of(Get.context!).login('createAccount');
  static String orSignInWith =
      AppLocalizations.of(Get.context!).login('orSignInWith');

  static String development = 
      AppLocalizations.of(Get.context!).login('develop');

  // -- Main menu
  static String titleCard = 
      AppLocalizations.of(Get.context!).myHome('titleCard');

  static String myAccount = 
      AppLocalizations.of(Get.context!).myHome('myAccount');

  static String collections = 
      AppLocalizations.of(Get.context!).myHome('collections');

  static String reports = 
      AppLocalizations.of(Get.context!).myHome('reports');

  static String credits = 
      AppLocalizations.of(Get.context!).myHome('credits');

  static String partners = 
      AppLocalizations.of(Get.context!).myHome('partners');

  static String myCredits = 
      AppLocalizations.of(Get.context!).myHome('myCredits');

  static String home = 
      AppLocalizations.of(Get.context!).myMenuBar('home');

  static String settings = 
      AppLocalizations.of(Get.context!).myMenuBar('settings');

  static String notifications = 
      AppLocalizations.of(Get.context!).myMenuBar('notifications');

  
}
