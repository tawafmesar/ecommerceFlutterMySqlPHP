
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

import '../../../controller/auth/forgetpassword_controller.dart';

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
              const CustomTextTitleAuth(text:"New Password" ),
              const SizedBox(height: 10,),
              const CustomTextBodyAuth(text: "Please enter new password "),
              const SizedBox(height: 15,),

              CustomTextFormAuth(
                // mycontroller: controller.email,
                hinttext: "Enter your password ",
                iconData: Icons.lock,
                labeltext: "Password",
              ),
              CustomTextFormAuth(
                // mycontroller: controller.email,
                hinttext: "Re Enter your email ",
                iconData: Icons.lock,
                labeltext: "Password",
              ),

              CustomButtonAuth(
                text: "Save",
                onPressed: (){},
              ),
              const SizedBox(height: 30,),

            ],
          ),
        )

    );
  }
}