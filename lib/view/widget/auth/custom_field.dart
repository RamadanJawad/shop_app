import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {super.key,
      this.validator,
      this.prefixIcon,
      this.controller,
      this.suffixIcon,
      this.hintText, this.obscureText});
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final bool? obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller ,
      validator: validator,
      cursorColor: Colors.grey,
      obscureText: obscureText!,
      style: TextStyle(fontFamily: "Cairo", fontSize: 18.sp),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(12),
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: "Cairo", fontSize: 18.sp),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15).r),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15).r),
          errorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15).r),
          focusedErrorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15).r)),
    );
  }
}
