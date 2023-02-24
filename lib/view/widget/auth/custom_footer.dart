import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key, this.title1, this.title2, this.onPressed});

  final String? title1;
  final String? title2;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title1!,
          style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 17.sp,
              color: Colors.black.withOpacity(0.6)),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            title2!,
            style: TextStyle(
                fontFamily: "Cairo",
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        )
      ],
    );
  }
}
