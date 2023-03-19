import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/shared/sheard_controller.dart';

class LocalController extends GetxController {
  Locale? language;

  changeLanguage(String langCode) {
    Locale locale = Locale(langCode);
    SharedPrefController().saveLanguage(langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    super.onInit();
    if (SharedPrefController().language == "ar") {
      language = const Locale("ar");
    }else if (SharedPrefController().language == "en"){
      language = const Locale("en");
    }else{
      language = Locale(Get.deviceLocale!.languageCode);
    }
  }
}
