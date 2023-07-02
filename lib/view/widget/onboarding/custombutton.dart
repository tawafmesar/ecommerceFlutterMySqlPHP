import 'package:ecommerce_flutter_php_mysql/controller/onboarding_controller.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoard extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 45,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        color: AppColor.primaryColor,
        child:  Text("8".tr// 'Continue'
        ),
      ),
    );
  }
}
