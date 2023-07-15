
import 'package:ecommerce_flutter_php_mysql/controller/auth/verfiycode_controller.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../controller/auth/verifycodesignup_controller.dart';
import '../../../core/class/statusrequest.dart';


class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeSignUpControllerImp());

    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColor.backgroundcolor,
            elevation: 0.0,
            centerTitle: true,
            title: Text("Verification Code",
                style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)) ),
        body: GetBuilder<VerifyCodeSignUpControllerImp>(
          builder: (controller) =>
          controller.statusRequest == StatusRequest.loading ?
            const Center(
              child: Text("Loading..."),
            ) :

              Container(
                padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                child: ListView(
                  children:  [

                    const CustomTextTitleAuth(text:"Check Code" ),
                    const SizedBox(height: 10,),
                    const CustomTextBodyAuth(text: "Please enter the digit code sent to tawaf@gmail.com "),
                    const SizedBox(height: 15,),

                    OtpTextField(
                      fieldWidth: 50.0,
                      borderRadius: BorderRadius.circular(20),
                      numberOfFields: 5,
                      borderColor: Color(0xFF512DA8),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode){
                        controller.goToSuccessSignUp(verificationCode);
                      }, // end onSubmit
                    ),
                  ],
                ),
              )
          ,
        )
    );
  }
}