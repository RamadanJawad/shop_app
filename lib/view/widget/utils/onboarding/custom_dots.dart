import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/data/onboarding_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/utils/onboarding_controller.dart';
import 'package:shop_app/core/constant/color.dart';

class CustomDots extends StatelessWidget {
  const CustomDots({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            ListData.instance.items.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              duration: const Duration(milliseconds: 400),
              width: controller.currentPage == index ? 25.w : 6.w,
              height: 6.h,
              decoration: BoxDecoration(
                  color: controller.currentPage == index
                      ? ColorApp.primaryColor
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(10).r),
            ),
          ),
        ],
      );
    });
  }
}