import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop_app/core/api/api_auth.dart';
import 'package:shop_app/core/constant/image.dart';
import 'package:shop_app/core/constant/route.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            children: [
              SizedBox(
                height: 100.h,
              ),
              Row(
                children: [
                  Image.asset(ImageUrl.user),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ramadan Ghattas",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Fashion Designer",
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15.sp,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 80.h,
              ),
              Row(
                children: [
                  Image.asset(ImageUrl.icon2),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "Wallets",
                    style: TextStyle(fontFamily: "Cairo", fontSize: 18.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Image.asset(ImageUrl.icon3),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "My orders",
                    style: TextStyle(fontFamily: "Cairo", fontSize: 18.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Image.asset(ImageUrl.icon4),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "About us",
                    style: TextStyle(fontFamily: "Cairo", fontSize: 18.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Image.asset(ImageUrl.icon5),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "Privacy policy",
                    style: TextStyle(fontFamily: "Cairo", fontSize: 18.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoute.settingScreen);
                },
                child: Row(
                  children: [
                    Image.asset(ImageUrl.icon6),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(fontFamily: "Cairo", fontSize: 18.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GestureDetector(
                onTap: () async {
                  await AuthApiController().logout();
                  Get.offNamed(AppRoute.loginScreen);
                },
                child: Row(
                  children: [
                    Image.asset(ImageUrl.icon7),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "Log out",
                      style: TextStyle(fontFamily: "Cairo", fontSize: 18.sp),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Image.asset(
                ImageUrl.logo,
                width: 70.w,
                height: 70.h,
              ),
              Spacer(),
            ],
          ),
        ));
  }
}
