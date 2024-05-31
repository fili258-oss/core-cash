import 'dart:ui';

import 'package:core_cash/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:core_cash/utils/constants/image_strings.dart';
import 'package:flutter_svg/svg.dart';


class MyHomeAppbar extends StatelessWidget {
const MyHomeAppbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SliverAppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark
      ),
      expandedHeight: 195.0,
      backgroundColor: AppColors.primaryBackground,
      elevation: 0.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: SvgPicture.asset(
          AppImage.myHomeImage1,
          fit:BoxFit.cover,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: Container(
          height: 32.0,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
          ),
          
          
        ),
      ),
      leadingWidth: 80.0,
      leading: Container(
        margin: const EdgeInsets.only(left: 24.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(56.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Container(
              height: 56.0,
              width: 56.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.20),
              ),
              child:
                  const Icon(Icons.arrow_back),
                  
            ),
          ),
        ),
        
      ),
    );
  }
}