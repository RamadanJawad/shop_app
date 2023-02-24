import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/core/function/validation.dart';
import 'package:shop_app/view/screen/auth/change_pass_screen.dart';
import 'package:shop_app/view/widget/auth/code_verification.dart';
import 'package:shop_app/controller/auth/verification_controller.dart';
import 'package:shop_app/core/constant/image.dart';
import 'package:shop_app/view/widget/auth/custom_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerificationController());
    return Scaffold(
      body: SafeArea(
        child: Container(
            margin: const EdgeInsets.all(10),
            child: Form(
              key: controller.formKye,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.arrow_back_rounded)),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(ImageUrl.logo),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Code Verification",
                    style: TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Please enter your code to change password",
                    style: TextStyle(fontFamily: "Cairo", fontSize: 19.sp),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        CodeVerification(
                          controller: controller.firstCodeTextController,
                          focusNode: controller.firstFocusNode,
                          onChanged: (String value) {
                            if (value.isNotEmpty) {
                              controller.secondFocusNode.requestFocus();
                            }
                          },
                          validator: (value) => Validate.validateCode(value),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CodeVerification(
                          controller: controller.secondCodeTextController,
                          focusNode: controller.secondFocusNode,
                          onChanged: (String value) {
                            if (value.isNotEmpty) {
                              controller.thirdFocusNode.requestFocus();
                            } else {
                              controller.firstFocusNode.requestFocus();
                            }
                          },
                          validator: (value) => Validate.validateCode(value),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CodeVerification(
                          controller: controller.thirdCodeTextController,
                          focusNode: controller.thirdFocusNode,
                          onChanged: (String value) {
                            value.isNotEmpty
                                ? controller.fourthFocusNode.requestFocus()
                                : controller.secondFocusNode.requestFocus();
                          },
                          validator: (value) => Validate.validateCode(value),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CodeVerification(
                          controller: controller.fourthCodeTextController,
                          focusNode: controller.fourthFocusNode,
                          onChanged: (String value) {
                            if (value.isEmpty) {
                              controller.thirdFocusNode.requestFocus();
                            }
                          },
                          validator: (value) => Validate.validateCode(value),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomButton(
                    color: ColorApp.primaryColor,
                    title: "Continue",
                    onPressed: () {
                      if (controller.formKye.currentState!.validate()) {
                        Get.to(() => ChangePassScreen());
                      }
                    },
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
