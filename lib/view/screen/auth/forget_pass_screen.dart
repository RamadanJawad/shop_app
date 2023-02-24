import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/auth/forget_pass_controller.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/core/constant/image.dart';
import 'package:shop_app/core/function/forget_password.dart';
import 'package:shop_app/core/function/validation.dart';
import 'package:shop_app/view/widget/auth/custom_button.dart';
import 'package:shop_app/view/widget/auth/custom_field.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPassController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Form(
                key: controller.formKye,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.arrow_back_rounded)),
                    SizedBox(
                      height: 50.h,
                    ),
                    Center(child: Image.asset(ImageUrl.logo)),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Reset your password",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Please enter your email address to \n request a password reset.",
                        style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomFormField(
                      controller: controller.emailController,
                      validator: (value) => Validate.validateEmail(value),
                      hintText: "Email",
                      obscureText: false,
                      prefixIcon: const ImageIcon(
                        AssetImage(ImageUrl.email),
                        color: ColorApp.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: CustomButton(
                        title: "Send New Password",
                        color: ColorApp.primaryColor,
                        onPressed: () {
                          if (controller.formKye.currentState!.validate()) {
                            apiForgetPassword(controller);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}
