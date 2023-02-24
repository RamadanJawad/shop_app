import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_app/controller/auth/register_controller.dart';
import 'package:shop_app/core/api/api_auth.dart';
import 'package:shop_app/core/api/api_response.dart';
import 'package:shop_app/model/users.dart';

Future<void> apiRegister(RegisterController controller) async {
  ApiResponse apiResponse = await AuthApiController().register(
      user: User.parm(
          fullName: controller.username.text,
          email: controller.email.text,
          gender: "M",
          password: controller.password.text));
  if (apiResponse.success) {
    Get.dialog(Center(
      child: CupertinoActivityIndicator(
        radius: 20.r,
        color: Colors.grey,
      ),
    ));
    Future.delayed(Duration(seconds: 3), () {
      Get.snackbar("Create Account", "create account successfully",
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.green);
      controller.goToSignIn();
    });
  } else {
    Get.snackbar("Error of Register", "${apiResponse.message}",
        snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.grey);
    Get.delete();
  }
  Get.delete();
}
