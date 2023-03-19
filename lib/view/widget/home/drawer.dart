import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:shop_app/view/screen/home/main_screen.dart';
import 'package:shop_app/view/widget/home/menu_widget.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final zoomDrawerController = ZoomDrawerController();
    return ZoomDrawer(
      controller: zoomDrawerController,
      menuScreen: const MenuScreen(),
      mainScreen: const MainScreen(),
      showShadow: true,
      androidCloseOnBackTap: true,
      style: DrawerStyle.defaultStyle,
      borderRadius: 25.r,
      shadowLayer1Color: Colors.grey.shade100,
      shadowLayer2Color: Colors.grey.shade200,
      menuBackgroundColor: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 35,
          spreadRadius: 35,
        )
      ],
      angle: 0.0,
    );
  }
}
