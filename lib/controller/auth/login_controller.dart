import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/constant/route.dart';

class LoginController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  var formKye = GlobalKey<FormState>();

  bool show_pass = true;

  void goToRegister() {
    Get.offNamed(AppRoute.registerScreen);
  }

  void goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPasswordScreen);
  }

  showPassword() {
    show_pass = show_pass == true ? false : true;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    email.dispose();
    password.dispose();
  }
}
