import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/utils/setting_controller.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/core/constant/image.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SettingController());
    return Scaffold(
      backgroundColor: ColorApp.secondaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorApp.secondaryColor,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(
          "Setting",
          style: TextStyle(
              fontFamily: "Cairo", color: Colors.black, fontSize: 25.sp),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(children: [
              Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: ColorApp.primaryColor.withOpacity(0.2),
                    image: const DecorationImage(
                        image: AssetImage(ImageUrl.icon11))),
              ),
              SizedBox(
                width: 15.w,
              ),
              Text(
                "Email Support",
                style: TextStyle(fontFamily: "Cairo", fontSize: 20.sp),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey,
              )
            ]),
            SizedBox(
              height: 20.h,
            ),
            Row(children: [
              Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: ColorApp.primaryColor.withOpacity(0.2),
                    image: const DecorationImage(
                        image: AssetImage(ImageUrl.icon10))),
              ),
              SizedBox(
                width: 15.w,
              ),
              Text(
                "FAQ",
                style: TextStyle(fontFamily: "Cairo", fontSize: 20.sp),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey,
              )
            ]),
            SizedBox(
              height: 20.h,
            ),
            Row(children: [
              Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: ColorApp.primaryColor.withOpacity(0.2),
                    image: const DecorationImage(
                        image: AssetImage(ImageUrl.icon5))),
              ),
              SizedBox(
                width: 15.w,
              ),
              Text(
                "Privacy Stetesment",
                style: TextStyle(fontFamily: "Cairo", fontSize: 20.sp),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey,
              )
            ]),
            SizedBox(
              height: 20.h,
            ),
            Row(children: [
              Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: ColorApp.primaryColor.withOpacity(0.2),
                    image: const DecorationImage(
                        image: AssetImage(ImageUrl.icon9))),
              ),
              SizedBox(
                width: 15.w,
              ),
              Text(
                "Notification",
                style: TextStyle(fontFamily: "Cairo", fontSize: 20.sp),
              ),
              const Spacer(),
              GetBuilder<SettingController>(builder: (controller) {
                return CupertinoSwitch(
                    value: controller.value1,
                    activeColor: ColorApp.primaryColor,
                    onChanged: (val) {
                      controller.value1 = val;
                      controller.update();
                    });
              }),
              SizedBox(
                height: 20.h,
              )
            ]),
            SizedBox(
              height: 20.h,
            ),
            Row(children: [
              Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: ColorApp.primaryColor.withOpacity(0.2),
                    image: const DecorationImage(
                        image: AssetImage(ImageUrl.icon11))),
              ),
              SizedBox(
                width: 15.w,
              ),
              Text(
                "Update",
                style: TextStyle(fontFamily: "Cairo", fontSize: 20.sp),
              ),
              const Spacer(),
              GetBuilder<SettingController>(builder: (controller) {
                return CupertinoSwitch(
                    value: controller.value2,
                    activeColor: ColorApp.primaryColor,
                    onChanged: (val) {
                      controller.value2 = val;
                      controller.update();
                    });
              })
            ])
          ],
        ),
      ),
    );
  }
}
