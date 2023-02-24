import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/auth/forget_pass_controller.dart';
import 'package:shop_app/core/api/api_auth.dart';
import 'package:shop_app/core/api/api_response.dart';
import 'package:shop_app/core/constant/route.dart';

Future<void> apiForgetPassword(ForgetPassController controller) async {
  ApiResponse response = await AuthApiController()
      .forgetPassword(email: controller.emailController.text.toString());
  controller.code = response.code.toString();
  if (response.success) {
    Get.toNamed(AppRoute.verifyCodeScreen);
  }
  Get.snackbar("Code Verification", "${controller.code}",
      margin: EdgeInsets.all(5), duration: Duration(seconds: 8));
}
