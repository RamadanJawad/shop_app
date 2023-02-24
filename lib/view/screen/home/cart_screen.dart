import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/home/cart_controller.dart';
import 'package:shop_app/core/constant/color.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    return Scaffold(
        backgroundColor: ColorApp.secondaryColor,
        appBar: AppBar(
          title: const Text(
            "My Cart",
            style: TextStyle(fontFamily: "Cairo", color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: ColorApp.secondaryColor,
          elevation: 0,
        ),
        body: GetBuilder<CartController>(
          builder: (controller) {
            if (controller.data.isEmpty) {
              return Center(
                child: Text(
                  "no data",
                  style: TextStyle(fontFamily: "Cairo", fontSize: 20.sp),
                ),
              );
            } else {
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: controller.data.length,
                        padding: const EdgeInsets.all(10),
                        itemBuilder: (context, index) {
                          return Container(
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10).r),
                              child: Row(
                                children: [
                                  Container(
                                    width: 70.w,
                                    height: 70.h,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius:
                                            BorderRadius.circular(10).r),
                                    child: Image.asset(
                                        controller.data[index]['image']),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${controller.data[index]['title']}",
                                        style: TextStyle(
                                            fontFamily: "Cairo",
                                            fontSize: 18.sp,
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "\$${controller.data[index]['price']}",
                                        style: TextStyle(
                                            fontFamily: "Cairo",
                                            fontSize: 18.sp,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  IconButton(
                                      onPressed: () {
                                        controller.increment();
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: ColorApp.primaryColor,
                                      )),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "${controller.count}",
                                    style: TextStyle(
                                        fontFamily: "Cairo", fontSize: 16.sp),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        controller.decrement();
                                      },
                                      icon: const Icon(
                                        Icons.remove,
                                        color: ColorApp.primaryColor,
                                      )),
                                ],
                              ));
                        }),
                  )
                ],
              );
            }
          },
        ));
  }
}
