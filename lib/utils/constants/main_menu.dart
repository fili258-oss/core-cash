// constants/main_menu.dart
import 'package:core_cash/utils/constants/image_strings.dart';


class MenuItem {
  final String title;
  final String imagePath;

  MenuItem({required this.title, required this.imagePath});
}

final List<MenuItem> mainMenuItems = [
  MenuItem(
    title: 'Mi cuenta',
    imagePath: AppImage.myAccount,
  ),
  MenuItem(
    title: 'Recaudos',
    imagePath: AppImage.collections,
  ),
  MenuItem(
    title: 'Reportes',
    imagePath: AppImage.reports,
  ),
  MenuItem(
    title: 'Créditos',
    imagePath: AppImage.credits,
  ),
  MenuItem(
    title: 'Asociados',
    imagePath: AppImage.partners,
  ),
  MenuItem(
    title: 'Mis Créditos',
    imagePath: AppImage.myCredits,
  ),
  
];
