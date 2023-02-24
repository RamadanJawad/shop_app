import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/home/main_controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.put(MainController());
    return Scaffold(
      body: controller.buildScreens(context),
    );
  }
}
