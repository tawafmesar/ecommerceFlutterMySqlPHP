import 'package:ecommerce_flutter_php_mysql/controller/onboarding_controller.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/onboarding/custombutton.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/onboarding/customslider.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onBoarding extends StatelessWidget {
  const onBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
        body: SafeArea(
      child: Column(children: [
        const Expanded(
          flex: 4,
          child: CustomSliderOnBoarding(),
        ),
        Expanded(
            flex: 1,
            child: Column(
              children: const [
                CustomDotControllerOnBoarding(),
                Spacer(
                  flex: 2,
                ),
                CustomButtonOnBoard()
              ],
            ))
      ]),
    ));
  }
}
