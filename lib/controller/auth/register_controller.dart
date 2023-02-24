import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/constant/route.dart';

class RegisterController extends GetxController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  var formKye = GlobalKey<FormState>();

  bool show_pass = true;


  void goToSignIn() {
    Get.offNamed(AppRoute.loginScreen);
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
    username = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    email.dispose();
    password.dispose();
    username.dispose();
  }
}
