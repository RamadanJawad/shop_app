import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/utils/onboarding_controller.dart';
import 'package:shop_app/data/onboarding_item.dart';

class CustomSlider extends GetView<OnBoardingController> {
  const CustomSlider({super.key});
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      itemCount: ListData.instance.items.length,
      onPageChanged: (index) {
        controller.onPageChange(index);
      },
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "${index + 1}/3",
                    style: TextStyle(fontFamily: "Cairo", fontSize: 14.sp),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      controller.skip();
                    },
                    child: Text(
                      index !=2 ? "skip" : "",
                      style: TextStyle(
                          fontFamily: "Cairo",
                          color: Colors.black,
                          fontSize: 17.sp),
                    ))
              ],
            ),
            SizedBox(
              height: 65.h,
            ),
            Image.asset(
              ListData.instance.items[index].image!,
              width: 300.w,
              height: 300.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              ListData.instance.items[index].title!,
              style: TextStyle(fontFamily: "Cairo", fontSize: 20.sp),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              ListData.instance.items[index].details!,
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: "Cairo", fontSize: 16.sp),
            ),
            const Spacer(),
          ],
        );
      },
    );
  }
}
