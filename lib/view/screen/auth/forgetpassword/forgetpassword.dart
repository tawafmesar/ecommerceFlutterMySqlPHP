
import 'package:ecommerce_flutter_php_mysql/controller/auth/signup_controller.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/logoauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../../controller/forgetpassword/forgetpassword_controller.dart';
import '../../../../core/class/statusrequest.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());

    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColor.backgroundcolor,
            elevation: 0.0,
            centerTitle: true,
            title: Text('14'.tr,
                style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)) ),
        body:GetBuilder<ForgetPasswordControllerImp>(
          builder: (controller)=>

          controller.statusRequest == StatusRequest.loading
              ? const Center(
            child: Text("Loading..."),
          )
              :

          Container(
              padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children:  [
                    CustomTextTitleAuth(text:"27".tr ),
                    const SizedBox(height: 10,),
                    CustomTextBodyAuth(text: "29".tr
                      //"Please enter your email address to receive a verification code "
                    ),
                    const SizedBox(height: 15,),

                    CustomTextFormAuth(

                      keyboardType: TextInputType.emailAddress,
                      valid: (val){

                      },
                      mycontroller: controller.email,
                      hinttext: "12".tr
                      //"Enter your email "
                      ,
                      iconData: Icons.email_outlined,
                      labeltext: "18".tr,
                    ),

                    CustomButtonAuth(
                      text: "30".tr,
                      onPressed: (){
                        controller.checkemail();
                      },
                    ),
                    const SizedBox(height: 30,),

                  ],
                ),
              ),
            )
          ,

        )

    );
  }
}