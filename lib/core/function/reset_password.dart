import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/auth/forget_pass_controller.dart';
import 'package:shop_app/controller/auth/reset_pass_controller.dart';
import 'package:shop_app/controller/auth/verification_controller.dart';
import 'package:shop_app/core/api/api_auth.dart';
import 'package:shop_app/core/api/api_response.dart';
import 'package:shop_app/core/constant/route.dart';

Future<void> apiResetPassword(ResetPassController controller) async {
  ForgetPassController control = Get.find();
  ApiResponse response = await AuthApiController().codeVerification(
      email: control.emailController.text,
      password: controller.passwordController!.text,
      code: control.code);
  if (response.success) {
    Get.offNamed(AppRoute.loginScreen);
    Get.snackbar("Change password", "change password sucssefuly",
        margin: EdgeInsets.all(5), duration: Duration(seconds: 8));
  }
}
