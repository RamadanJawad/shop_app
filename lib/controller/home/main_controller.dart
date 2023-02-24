import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/view/screen/home/cart_screen.dart';
import 'package:shop_app/view/screen/home/favorite_screen.dart';
import 'package:shop_app/view/screen/home/home_screen.dart';
import 'package:shop_app/view/screen/home/profile_screen.dart';
import 'package:shop_app/view/widget/home/drawer.dart';

class MainController extends GetxController {
  RxInt index = 0.obs;
  late PersistentTabController controller;
  void onTap(int val) {
    index.value = val;
  }

  List<PersistentBottomNavBarItem> navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home_filled),
        title: 'Home',
        textStyle: TextStyle(fontFamily: "Cairo", fontSize: 13.sp),
        activeColorPrimary: ColorApp.primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_cart_outlined),
        title: 'Cart',
        textStyle: TextStyle(fontFamily: "Cairo", fontSize: 13.sp),
        activeColorPrimary: ColorApp.primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite),
        title: 'Favorite',
        activeColorPrimary: ColorApp.primaryColor,
        inactiveColorPrimary: Colors.grey,
        textStyle: TextStyle(fontFamily: "Cairo", fontSize: 13.sp),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person_2_rounded),
        title: 'Profile',
        textStyle: TextStyle(fontFamily: "Cairo", fontSize: 13.sp),
        activeColorPrimary: ColorApp.primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  PersistentTabView buildScreens(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      padding:const NavBarPadding.symmetric(vertical: 5),
      decoration: NavBarDecoration(borderRadius: BorderRadius.circular(15).r),
      items: navBarItems(),
      navBarStyle: NavBarStyle.style8,
      screens: const[
        HomeScreen(),
        CartScreen(),
        FavoriteScreen(),
        ProfileScreen(),
      ],
    );
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    controller = PersistentTabController(initialIndex: 0);
  }
}
