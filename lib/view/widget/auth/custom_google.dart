import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/constant/image.dart';

class CustomGoogle extends StatelessWidget {
  const CustomGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: Container(
        width: 110.w,
        height: 55.h,
        child: Row(
          children: [
            Image.asset(ImageUrl.google),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "GOOGLE",
              style: TextStyle(fontFamily: "Cairo", fontSize: 15.sp),
            )
          ],
        ),
      ),
    );
  }
}
