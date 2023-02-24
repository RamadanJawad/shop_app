import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/home/cart_controller.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/view/widget/auth/custom_button.dart';

class ProductDetails extends StatelessWidget {
  final String title;
  final String path;
  final int price;
  final bool status;
  const ProductDetails(
      {super.key,
      required this.title,
      required this.path,
      required this.price,
      required this.status});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController(), permanent: true);
    return Scaffold(
      backgroundColor: ColorApp.secondaryColor,
      appBar: AppBar(
        backgroundColor: ColorApp.secondaryColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.favorite,
              color: status == true ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              path,
              width: double.infinity,
              height: 300.h,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 80.h,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40).r,
                        topRight: const Radius.circular(40).r)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$title",
                          style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ $price",
                          style:
                              TextStyle(fontFamily: "Cairo", fontSize: 18.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontFamily: "Cairo",
                          color: Colors.grey,
                          fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Colors",
                      style: TextStyle(fontFamily: "Cairo", fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 35.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: Colors.tealAccent,
                              borderRadius: BorderRadius.circular(50).r),
                        ),
                        Container(
                          width: 35.w,
                          margin: const EdgeInsets.only(left: 10),
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(50).r),
                        ),
                        Container(
                          width: 35.w,
                          margin: const EdgeInsets.only(left: 10),
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(50).r),
                        ),
                        Container(
                          width: 35.w,
                          height: 35.h,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(50).r),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Center(
                      child: CustomButton(
                        color: ColorApp.primaryColor,
                        title: "Add to Cart",
                        onPressed: () {
                          controller.addToCart(title, path, price);
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
