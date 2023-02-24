import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/auth/reset_pass_controller.dart';
import 'package:shop_app/core/constant/image.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/core/function/reset_password.dart';
import 'package:shop_app/core/function/validation.dart';
import 'package:shop_app/view/widget/auth/custom_button.dart';
import 'package:shop_app/view/widget/auth/custom_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePassScreen extends StatelessWidget {
  const ChangePassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ResetPassController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50.h),
            Image.asset(ImageUrl.logo),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Change Password",
              style: TextStyle(
                  fontSize: 30.sp,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40.h,
            ),
            
            CustomFormField(
              controller: controller.passwordController,
                prefixIcon: const ImageIcon(
                  AssetImage(ImageUrl.password),
                  color: ColorApp.primaryColor,
                ),
                hintText: "New password",
                obscureText: true,
                validator: (value) => Validate.validatePassword(value)),
            SizedBox(
              height: 15.h,
            ),
            CustomFormField(
              controller: controller.passwordConfirmationController,
                prefixIcon: const ImageIcon(
                  AssetImage(ImageUrl.password),
                  color: ColorApp.primaryColor,
                ),
                hintText: "Repeat password",
                obscureText: true,
                validator: (value) => Validate.validatePassword(value)),
            SizedBox(
              height: 40.h,
            ),
            CustomButton(
              title: "Save Change",
              onPressed: () {
                apiResetPassword(controller);
              },
              color: ColorApp.primaryColor,
            )
          ],
        ),
      )),
    );
  }
}