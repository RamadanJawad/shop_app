import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_app/core/constant/route.dart';
import 'package:shop_app/controller/auth/login_controller.dart';
import 'package:shop_app/core/api/api_auth.dart';
import 'package:shop_app/core/api/api_response.dart';

Future<void> apiLogin(LoginController controller) async {
  ApiResponse apiResponse = await AuthApiController()
      .login(email: controller.email.text, password: controller.password.text);
  if (apiResponse.success) {
    Get.dialog(Center(
      child: CupertinoActivityIndicator(
        radius: 20.r,
        color: Colors.grey,
      ),
    ));
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRoute.mainScreen);
    });
  } else {
    Get.snackbar("Error of login", "${apiResponse.message}",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.grey,
        margin: const EdgeInsets.all(5));
    Get.delete();
  }
  Get.delete();
}
