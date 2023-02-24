import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/api/api_auth.dart';

class VerificationController extends GetxController {
  late TextEditingController firstCodeTextController;
  late TextEditingController secondCodeTextController;
  late TextEditingController thirdCodeTextController;
  late TextEditingController fourthCodeTextController;
  var formKye = GlobalKey<FormState>();

  late FocusNode firstFocusNode;
  late FocusNode secondFocusNode;
  late FocusNode thirdFocusNode;
  late FocusNode fourthFocusNode;

  String code = '';

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    firstCodeTextController = TextEditingController();
    secondCodeTextController = TextEditingController();
    thirdCodeTextController = TextEditingController();
    fourthCodeTextController = TextEditingController();
    firstFocusNode = FocusNode();
    secondFocusNode = FocusNode();
    thirdFocusNode = FocusNode();
    fourthFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    firstCodeTextController.dispose();
    secondCodeTextController.dispose();
    thirdCodeTextController.dispose();
    fourthCodeTextController.dispose();
    firstFocusNode.dispose();
    secondFocusNode.dispose();
    thirdFocusNode.dispose();
    fourthFocusNode.dispose();
  }
}
