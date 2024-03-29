import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/locale/local_controller.dart';
import 'package:shop_app/core/locale/translation.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/core/shared/sheard_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initSharedPref();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(LocalController());
    return ScreenUtilInit(
        designSize: const Size(392.7, 856.7),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => GetMaterialApp(
          locale: controller.language,
          translations: MyTranslation(),
              debugShowCheckedModeBanner: false,
              getPages: routes,
            ));
  }
}
