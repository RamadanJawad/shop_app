import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/utils/onboarding_controller.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/data/onboarding_item.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(builder: (controller) {
      return SizedBox(
        height: 50.h,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorApp.primaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15).r),
              padding: const EdgeInsets.symmetric(horizontal: 60)),
          onPressed: () {
            controller.next();
          },
          child: Text(
            controller.currentPage == ListData.instance.items.length - 1
                ? "Get Started"
                : "Next",
            style: TextStyle(fontSize: 18.sp, fontFamily: "Cairo"),
          ),
        ),
      );
    });
  }
}
