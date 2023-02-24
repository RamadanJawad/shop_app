import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/auth/login_controller.dart';
import 'package:shop_app/core/constant/image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/core/function/login.dart';
import 'package:shop_app/core/function/validation.dart';
import 'package:shop_app/view/widget/auth/custom_button.dart';
import 'package:shop_app/view/widget/auth/custom_facebook.dart';
import 'package:shop_app/view/widget/auth/custom_field.dart';
import 'package:shop_app/view/widget/auth/custom_footer.dart';
import 'package:shop_app/view/widget/auth/custom_divider.dart';
import 'package:shop_app/view/widget/auth/custom_google.dart';
import 'package:shop_app/view/widget/auth/custom_title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      backgroundColor: ColorApp.secondaryColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: controller.formKye,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Image.asset(ImageUrl.logo),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomTitle(
                      title: "Log in",
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CustomFormField(
                      hintText: "Email",
                      obscureText: false,
                      controller: controller.email,
                      prefixIcon: const ImageIcon(
                        AssetImage(ImageUrl.email),
                        color: ColorApp.primaryColor,
                      ),
                      validator: (value) => Validate.validateEmail(value),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    GetBuilder<LoginController>(
                      builder: (controller) => CustomFormField(
                        hintText: "Password",
                        controller: controller.password,
                        obscureText: controller.show_pass,
                        suffixIcon: InkWell(
                          onTap: () => controller.showPassword(),
                          child: Icon(
                            controller.show_pass
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: ColorApp.primaryColor,
                          ),
                        ),
                        prefixIcon: const ImageIcon(
                          AssetImage(ImageUrl.password),
                          color: ColorApp.primaryColor,
                        ),
                        validator: (value) => Validate.validatePassword(value),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {
                            controller.goToForgetPassword();
                          },
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Cairo",
                                fontSize: 16.sp),
                          )),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomButton(
                      title: "Log in",
                      color: ColorApp.primaryColor,
                      onPressed: () {
                        if (controller.formKye.currentState!.validate()) {
                          apiLogin(controller);
                        }
                      },
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const CustomDivider(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [CustomFacebook(), CustomGoogle()],
                    ),
                    const Spacer(),
                    CustomFooter(
                      title1: "Don’t have an account?",
                      title2: "Sign Up",
                      onPressed: () => controller.goToRegister(),
                    ),
                    SizedBox(
                      height: 10.h,
                    )
                  ],
                ),
              ))),
    );
  }
}
