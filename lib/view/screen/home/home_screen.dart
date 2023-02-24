import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shop_app/controller/home/home_controller.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:get/get.dart';
import 'package:shop_app/data/category.dart';
import 'package:shop_app/view/screen/home/product_details.dart';
import 'package:shop_app/view/widget/home/category_widget.dart';
import 'package:shop_app/view/widget/home/subcategory_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorApp.secondaryColor,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              if (ZoomDrawer.of(context)!.isOpen()) {
                ZoomDrawer.of(context)!.close();
              } else {
                ZoomDrawer.of(context)!.open();
              }
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
          title: const Text(
            "15/2 New Texas",
            style: TextStyle(fontFamily: "Cairo", color: Colors.black),
          ),
          backgroundColor: ColorApp.secondaryColor,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          actions: [
            CupertinoButton(
                child: const Icon(
                  CupertinoIcons.bell_solid,
                  color: Colors.grey,
                ),
                onPressed: () {})
          ],
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 35.sp,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "best Outfits for you",
                style: TextStyle(
                    fontFamily: "Cairo", fontSize: 23.sp, color: Colors.grey),
              ),
              SizedBox(
                height: 15.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(CupertinoIcons.search),
                    hintText: "Search items...",
                    contentPadding: const EdgeInsets.all(15),
                    hintStyle: const TextStyle(fontFamily: "Cairo"),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_alt_rounded),
                      color: ColorApp.primaryColor,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10).r)),
              ),
              SizedBox(
                height: 20.h,
              ),
              GetBuilder<HomeController>(builder: (controller) {
                return SizedBox(
                    width: double.infinity,
                    height: 120.h,
                    child: CategoryWidget(
                      selected: controller.select,
                      callback: (int index) {
                        controller.onChange(index);
                        if (controller.item.isNotEmpty) {
                          controller.item.clear();
                          controller
                              .readData(categories[index]['name'].toString());
                        } else {
                          controller
                              .readData(categories[index]['name'].toString());
                        }
                      },
                    ));
              }),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arrival",
                    style: TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontFamily: "Cairo",
                          color: Colors.grey,
                          fontSize: 18.sp,
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SubCategoryWidget()
            ],
          ),
        ));
  }
}
