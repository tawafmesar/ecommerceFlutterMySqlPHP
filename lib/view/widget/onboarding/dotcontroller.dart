import 'package:ecommerce_flutter_php_mysql/controller/onboarding_controller.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>
    (builder: (controller) =>  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          onBoardingList.length,
          (index) => AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5),
                duration: const Duration(microseconds: 900),
                width: controller.currentPage == index ? 18 : 5,
                height: 6,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              )
              )
      ],
    ));
  }
}
