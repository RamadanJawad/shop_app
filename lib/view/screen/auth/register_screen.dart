import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/auth/register_controller.dart';
import 'package:shop_app/core/constant/image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/core/function/register.dart';
import 'package:shop_app/core/function/validation.dart';
import 'package:shop_app/view/widget/auth/custom_button.dart';
import 'package:shop_app/view/widget/auth/custom_facebook.dart';
import 'package:shop_app/view/widget/auth/custom_field.dart';
import 'package:shop_app/view/widget/auth/custom_footer.dart';
import 'package:shop_app/view/widget/auth/custom_divider.dart';
import 'package:shop_app/view/widget/auth/custom_google.dart';
import 'package:shop_app/view/widget/auth/custom_method.dart';
import 'package:shop_app/view/widget/auth/custom_title.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
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
                      title: "Sign up",
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CustomFormField(
                      controller: controller.username,
                      hintText: "Username",
                      obscureText: false,
                      prefixIcon: const ImageIcon(
                        AssetImage(ImageUrl.person),
                        color: ColorApp.primaryColor,
                      ),
                      validator: (value) => Validate.validateUserName(value),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    CustomFormField(
                      controller: controller.email,
                      hintText: "Email",
                      obscureText: false,
                      prefixIcon: const ImageIcon(
                        AssetImage(ImageUrl.email),
                        color: ColorApp.primaryColor,
                      ),
                      validator: (value) => Validate.validatePassword(value),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    GetBuilder<RegisterController>(
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
                      height: 40.h,
                    ),
                    CustomButton(
                      title: "Sign up",
                      color: ColorApp.primaryColor,
                      onPressed: () {
                        apiRegister(controller);
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
                      title1: "Already have an account?",
                      title2: "Log In",
                      onPressed: () => controller.goToSignIn(),
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
