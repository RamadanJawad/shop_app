import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.title, this.onPressed, this.color});

  final String? title;
  final void Function()? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        title!,
        style: TextStyle(fontFamily: "Cairo", fontSize: 20.sp),
      ),
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20).r),
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
          backgroundColor: color),
    );
  }
}
