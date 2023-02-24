import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/utils/onboarding_controller.dart';
import 'package:shop_app/view/widget/utils/onboarding/custom_button.dart';
import 'package:shop_app/view/widget/utils/onboarding/custom_dots.dart';
import 'package:shop_app/view/widget/utils/onboarding/custom_slider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(flex: 4, child: CustomSlider()),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const CustomDots(),
                    SizedBox(
                      height: 40.h,
                    ),
                    const CustomButton(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
