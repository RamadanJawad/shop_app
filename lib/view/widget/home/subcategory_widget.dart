import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/home/home_controller.dart';
import 'package:shop_app/view/screen/home/product_details.dart';

class SubCategoryWidget extends StatelessWidget {
  const SubCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return SizedBox(
        width: double.infinity,
        height: 200.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.item.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(() => ProductDetails(
                        status: controller.item[index]['isFav'],
                        title: controller.item[index]['title'],
                        path: controller.item[index]['image'],
                        price: controller.item[index]['price'],
                      ));
                },
                child: Container(
                  width: 135.w,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
                      color: Colors.grey.shade200),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Image.asset(
                            controller.item[index]['image'],
                            width: double.infinity,
                            height: 120.h,
                          ),
                          Text(controller.item[index]['title']),
                          Text("\$ ${controller.item[index]['price']}"),
                        ],
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                              onPressed: () {
                                controller.check(
                                    index,
                                    controller.item[index]['image'],
                                    controller.item[index]['title']);
                              },
                              icon: Icon(
                                Icons.favorite_rounded,
                                color: controller.item[index]['isFav']
                                    ? Colors.red
                                    : controller.color,
                              ))),
                    ],
                  ),
                ),
              );
            }),
      );
    });
  }
}
