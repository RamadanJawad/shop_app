import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/home/home_controller.dart';
import 'package:shop_app/core/constant/color.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
        backgroundColor: ColorApp.secondaryColor,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: const Text(
            "Favorite",
            style: TextStyle(fontFamily: "Cairo", color: Colors.black),
          ),
          backgroundColor: ColorApp.secondaryColor,
        ),
        body: GetBuilder<HomeController>(
          builder: (controller) {
            if (controller.fav.isEmpty) {
              return const Center(
                child: Text("no data"),
              );
            }
            return Container(
              margin: const EdgeInsets.all(10),
              child: GridView.builder(
                  itemCount: controller.fav.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10).r),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              controller.fav[index]['image'],
                            ),
                          ),
                          Text(
                            controller.fav[index]['title'],
                            style:
                                TextStyle(fontFamily: "Cairo", fontSize: 18.sp),
                          )
                        ],
                      ),
                    );
                  }),
            );
          },
        ));
  }
}
