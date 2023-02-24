import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/constant/route.dart';
import 'package:shop_app/core/shared/sheard_controller.dart';

class SplashController extends GetxController {
  Future<bool> checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        Future.delayed(Duration(seconds: 4), () {
          SharedPrefController().boardingIn
              ? SharedPrefController().loggedIn
                  ? Get.offNamed(AppRoute.drawerScreen)
                  : Get.offNamed(AppRoute.loginScreen)
              : Get.offNamed(AppRoute.onBoardingScreen);
        });
      }
    } on SocketException catch (_) {
      Get.snackbar(
          "Check of Internet", "Check your internet connection and try again",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.grey,
          margin: const EdgeInsets.all(5));
      
    }
    return false;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkInternetConnection();
  }
}
