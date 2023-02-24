import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/api/api_read.dart';
import 'package:shop_app/data/subcategory.dart';
import 'package:shop_app/model/image.dart';

class HomeController extends GetxController {
  int select = 0;
  List item = [];
  List fav = [];
  Color color = Colors.grey.shade400;
  bool status = false;
  List<CartImage> images = <CartImage>[];
  ReadDataFromApi api = ReadDataFromApi();
  bool isLoading = false;

  onChange(int index) {
    select = index;
    update();
  }

  readImages() async {
    isLoading = true;
    images = await api.readImages();
    isLoading = false;
    update();
  }

  readData(String value) {
    for (final x in subCategory) {
      for (final y in x[value]) {
        item.add(y);
      }
    }
    update();
  }

  check(int index, String image, String title) {
    item[index]['isFav'] = !item[index]['isFav'];
    if (item[index]['isFav'] == true) {
      fav.add({"image": image, "title": title, "id": item[index]['id']});
    } else if (item[index]['isFav'] == false) {
      for (int i = 0; i < fav.length; i++) {
        if (item[index]['id'] == fav[i]['id']) {
          fav.remove(fav[i]);
        }
      }
    }

    update();
  }

  @override
  void onInit() {
    readImages();
    super.onInit();
    readData("TShirt");
  }
}
