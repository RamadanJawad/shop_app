import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/constant/image.dart';

class CustomMethod extends StatelessWidget {
  const CustomMethod({super.key, this.faceTap, this.googleTap});
  final Function()? faceTap;
  final Function()? googleTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: faceTap,
          child: Image.asset(
            ImageUrl.facebook,
            width: 40.w,
            height: 40.h,
            fit: BoxFit.cover,
          ),
        ),
        GestureDetector(
          onTap: googleTap,
          child: Image.asset(
            ImageUrl.google,
            width: 40.w,
            height: 40.h,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
