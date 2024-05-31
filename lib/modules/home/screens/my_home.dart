import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:core_cash/modules/home/widgets/my_home_appbar.dart';
import 'package:core_cash/utils/constants/colors.dart';
import 'package:core_cash/utils/constants/image_strings.dart';
import 'package:core_cash/utils/constants/main_menu.dart';
import 'package:core_cash/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHome extends StatefulWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
  body: CustomScrollView(
    slivers: <Widget>[
      const MyHomeAppbar(),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  Stack(
                    children: <Widget>[
                      // Fondo con imagen SVG
                      SvgPicture.asset(
                        AppImage.myHomeBanner1,
                        
                        fit: BoxFit.cover,
                      ),
                      // Etiquetas superpuestas
                      const Positioned(
                        top: 50,
                        left: 20,
                        child: Text(
                          'Marino Botina',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 100,
                        left: 20,
                        child: Text(
                          'AsoFiagro',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 150,
                        left: 20,
                        child: Text(
                          'Mis ahorros:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 180,
                        left: 20,
                        child: Text(
                          '435,000.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // Agrega más etiquetas según sea necesario
                    ],
                  ),                                    
              ],

            ),
          ),
        ),
        SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // 3 elementos por fila
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,

            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final menuItem = mainMenuItems[index];
                return Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        menuItem.imagePath, // Ruta de la imagen
                        fit: BoxFit.cover,
                        height: 35, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10), // Espacio entre la imagen y el texto
                      Text(menuItem.title),
                    ],
                  ),
                );
              },
              childCount: mainMenuItems.length,
            ),
        ),
    ],
  ),
  bottomNavigationBar: const Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0),
    child: GNav(
      backgroundColor: AppColors.white,
      activeColor: AppColors.primary,
      tabBackgroundColor: AppColors.primaryBackground,
      gap: 8,
      padding: EdgeInsets.all(16),
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.linked_camera,
          text: 'Likes',
        ),
        GButton(
          icon: Icons.search,
          text: 'Search',
        ),
        GButton(
          icon: Icons.verified_user,
          text: 'Profile',
        ),
      ],
    ),
  ),
);

  }
}