import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/home/home_controller.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/data/category.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.selected,
    required this.callback,
  });

  final int selected;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Container(
      padding:  EdgeInsets.symmetric(vertical: 10.w),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: 20.w,
        ),
        itemCount: controller.images.length,
        scrollDirection: Axis.horizontal,
        padding:  EdgeInsets.symmetric(horizontal: 7.w),
        itemBuilder: (context, index) {
          if (controller.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: ColorApp.primaryColor,
              ),
            );
          } else if (controller.images.isNotEmpty) {
            return GestureDetector(
              onTap: () => callback(index),
              child: Container(
                padding:
                     EdgeInsets.symmetric(vertical: 5.w, horizontal: 18.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).r,
                  boxShadow: [
                    BoxShadow(
                        color: selected == index
                            ? ColorApp.primaryColor
                            : Colors.white,
                        blurRadius: 5)
                  ],
                  border: Border.all(
                      color: selected == index
                          ? ColorApp.primaryColor
                          : Colors.grey),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    CachedNetworkImage(
                      imageUrl: controller.images[index].imageUrl,
                      placeholder: (context, url) => CircularProgressIndicator(
                        color: ColorApp.primaryColor,
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    Text(
                      categories[index]['name'],
                      style: const TextStyle(fontFamily: "Cairo"),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const Center(
              child: Text(
                "no data",
                style: TextStyle(color: Colors.black),
              ),
            );
          }
        },
      ),
    );
  }
}
