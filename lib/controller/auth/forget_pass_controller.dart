import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassController extends GetxController {
  late TextEditingController emailController;
  var formKye = GlobalKey<FormState>();
  String code='';

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
  }
}
