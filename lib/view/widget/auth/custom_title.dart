import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
          fontFamily: "Cairo",
          fontSize: 25.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black),
    );
  }
}
