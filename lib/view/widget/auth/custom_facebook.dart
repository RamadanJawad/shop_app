import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/constant/image.dart';

class CustomFacebook extends StatelessWidget {
  const CustomFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15).r)),
      child: Container(
        width: 110.w,
        height: 55.h,
        child: Row(
          children: [
            Image.asset(
              ImageUrl.facebook,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "FACEBOOK",
              style: TextStyle(fontFamily: "Cairo", fontSize: 15.sp),
            )
          ],
        ),
      ),
    );
  }
}
