
import 'package:ecommerce_flutter_php_mysql/controller/auth/resetpassword_controller.dart';
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

import '../../../../controller/auth/forgetpassword_controller.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());

    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColor.backgroundcolor,
            elevation: 0.0,
            centerTitle: true,
            title: Text("Reset Password",
                style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)) ),
        body:Container(
          padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
          child: ListView(
            children:  [
               CustomTextTitleAuth(text:"35".tr
            //  "New Password"
              ),
              const SizedBox(height: 10,),
               CustomTextBodyAuth(text: "34".tr
             //  "Please enter new password "
               ),
              const SizedBox(height: 15,),

              CustomTextFormAuth(
                // mycontroller: controller.email,
                hinttext: "13".tr
                //"Enter your password "
                ,
                iconData: Icons.lock,
                labeltext: "19".tr,
              ),
              CustomTextFormAuth(
                // mycontroller: controller.email,
                hinttext: "Re" + " " + "13".tr,
                iconData: Icons.lock,
                labeltext: "19".tr,
              ),

              CustomButtonAuth(
                text: "33".tr,
                onPressed: (){
                  controller.goToSuccessResetPassword();
                },
              ),
              const SizedBox(height: 30,),
            ],
          ),
        )
    );
  }
}