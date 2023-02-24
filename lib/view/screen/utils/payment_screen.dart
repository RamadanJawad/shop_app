import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/core/constant/color.dart';
import 'package:shop_app/core/constant/image.dart';
import 'package:shop_app/view/widget/auth/custom_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorApp.secondaryColor,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(ImageUrl.border),
              Image.asset(ImageUrl.ok),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 50.h,
          ),
          Text(
            "Congratulation!!!",
            style: TextStyle(
                fontFamily: "Cairo",
                fontSize: 25.sp,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Text(
            "Payment is the transfer of money \n services in exchange product or Payments",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Cairo", color: Colors.grey),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomButton(
            color: ColorApp.primaryColor,
            title: "Get your receipt",
            onPressed: () {},
          ),
          SizedBox(
            height: 20.h,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20).r),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
                  backgroundColor: Color(0xffFFE9E2)),
              child: Text(
                "Back to Home",
                style: TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 20.sp,
                    color: ColorApp.primaryColor),
              ))
        ],
      )),
    );
  }
}
