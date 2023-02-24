import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/constant/route.dart';
import 'package:shop_app/core/shared/sheard_controller.dart';
import 'package:shop_app/data/onboarding_item.dart';

class OnBoardingController extends GetxController {
  int currentPage = 0;
  late PageController pageController;

  void skip() {
    pageController.animateToPage(2,
        duration: const Duration(milliseconds: 400),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  void next() {
    currentPage++;
    if (currentPage > ListData.instance.items.length - 1) {
      Get.offAllNamed(AppRoute.loginScreen);
      SharedPrefController().saveIsBoarding();
    }
    pageController.animateToPage(currentPage,
        duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
  }

  void onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pageController = PageController();
  }
}
