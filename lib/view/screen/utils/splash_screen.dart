import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/utils/splash_controller.dart';
import 'package:shop_app/core/constant/image.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SplashController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(child: Image.asset(ImageUrl.logo)),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "1".tr,
            style: TextStyle(
                fontFamily: "Cairo",
                fontSize: 25.sp,
                fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          const CupertinoActivityIndicator(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
