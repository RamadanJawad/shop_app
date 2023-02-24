import 'package:flutter/material.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CodeVerification extends StatelessWidget {
  const CodeVerification({
    Key? key,
    required this.controller,
    required this.focusNode,
    required this.onChanged,
    required this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String value) onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        validator: validator,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: TextStyle(fontFamily: "Cairo", fontSize: 20.sp),
        textInputAction: TextInputAction.done,
        cursorColor: ColorApp.primaryColor,
        onChanged: onChanged,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            counterText: '',
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10).r,
                borderSide:
                    BorderSide(width: 1.w, color: ColorApp.primaryColor)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10).r,
                borderSide:  BorderSide(width: 1.w, color: Colors.grey))),
      ),
    );
  }
}
