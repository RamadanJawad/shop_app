import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            endIndent: 10.w,
            indent: 15.w,
            color: Colors.black.withOpacity(0.5),
            thickness: 1,
          ),
        ),
        const Text(
          "Or",
          style: TextStyle(fontFamily: "Cairo"),
        ),
        Expanded(
            child: Divider(
          endIndent: 15.w,
          indent: 10.w,
          color: Colors.black.withOpacity(0.5),
          thickness: 1,
        ))
      ],
    );
  }
}
