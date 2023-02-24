import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassController extends GetxController {
  TextEditingController? passwordController;
  TextEditingController? passwordConfirmationController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    passwordController = TextEditingController();
    passwordConfirmationController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passwordController!.dispose();
    passwordConfirmationController!.dispose();
  }
}
