import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/core/constant/image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.secondaryColor,
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                ImageUrl.back,
                width: double.infinity,
                height: 200.h,
                fit: BoxFit.fill,
              ),
              Image.asset(
                ImageUrl.user,
                height: 120.h,
                width: 120.w,
                fit: BoxFit.fill,
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Alex Nikiforov",
            style: TextStyle(
                fontFamily: "Cairo",
                fontSize: 23.sp,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "alex@msn.com",
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 17.sp,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin:const EdgeInsets.all(10),
                  padding:const EdgeInsets.all(3),
                  width: 120.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
                      color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        width: 50.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50).r,
                            color: ColorApp.primaryColor.withOpacity(0.3)),
                        child: Image.asset(ImageUrl.password),
                      ),
                      Text(
                        "Progress order",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 17.sp,
                            color: Colors.grey),
                      ),
                      Text(
                        "10+",
                        style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 17.sp,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin:const EdgeInsets.all(10),
                  padding:const EdgeInsets.all(3),
                  width: 120.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
                      color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        width: 50.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50).r,
                            color:const Color(0xff0EA2F6).withOpacity(0.3)),
                        child: Image.asset(ImageUrl.ticket),
                      ),
                      Text(
                        "Promocodes",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 17.sp,
                            color: Colors.grey),
                      ),
                      Text(
                        "5",
                        style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 17.sp,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin:const EdgeInsets.all(10),
                  padding:const EdgeInsets.all(3),
                  width: 120.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
                      color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        width: 50.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50).r,
                            color:const Color(0xffFFC107).withOpacity(0.3)),
                        child: Image.asset(ImageUrl.star),
                      ),
                      Text(
                        "Reviewes",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 17.sp,
                            color: Colors.grey),
                      ),
                      Text(
                        "4.5K",
                        style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 17.sp,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
              margin:const EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text(
                "Personal Information",
                style: TextStyle(fontFamily: "Cairo", fontSize: 20.sp),
              )),
          Container(
            margin:const EdgeInsets.symmetric(horizontal: 10),
            padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5).r,
                border: Border.all(color: Colors.grey)),
            child: Column(children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Name:",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            color: Colors.grey,
                            fontSize: 17.sp),
                      ),
                      Text(
                        "Chris Harison",
                        style: TextStyle(fontFamily: "Cairo", fontSize: 17.sp),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Email:",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            color: Colors.grey,
                            fontSize: 17.sp),
                      ),
                      Text(
                        "chris@gmail.com",
                        style: TextStyle(fontFamily: "Cairo", fontSize: 17.sp),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Location:",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            color: Colors.grey,
                            fontSize: 17.sp),
                      ),
                      Text(
                        "San Diego",
                        style: TextStyle(fontFamily: "Cairo", fontSize: 17.sp),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Zip Code:",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            color: Colors.grey,
                            fontSize: 17.sp),
                      ),
                      Text(
                        "1200",
                        style: TextStyle(fontFamily: "Cairo", fontSize: 17.sp),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Phone Number:",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            color: Colors.grey,
                            fontSize: 17.sp),
                      ),
                      Text(
                        "(+1) 5484 4757 84",
                        style: TextStyle(fontFamily: "Cairo", fontSize: 17.sp),
                      ),
                    ],
                  )
                ],
              )
            ]),
          )
        ],
      )),
    );
  }
}
