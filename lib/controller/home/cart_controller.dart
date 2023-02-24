import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List data = [];
  int count = 1;
  

  void addToCart(String title, String image, int price) {
    data.add({"title": title, "image": image, "price": price});
    Get.snackbar(
        "Add to Cart", "The item has been added to the cart successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.grey,
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
        margin: const EdgeInsets.all(5));
    update();
  }

  void increment() {
    count++;
    update();
  }

  void decrement() {
    count--;
    update();
  }
}
