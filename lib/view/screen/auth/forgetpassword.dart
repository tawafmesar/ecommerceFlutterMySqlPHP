
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

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());

    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColor.backgroundcolor,
            elevation: 0.0,
            centerTitle: true,
            title: Text("Forget Password",
                style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)) ),
        body:Container(
          padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
          child: ListView(
            children:  [
              const CustomTextTitleAuth(text:"Check Email" ),
              const SizedBox(height: 10,),
              const CustomTextBodyAuth(text: "Please enter your email address to receive a verification code "),
              const SizedBox(height: 15,),

              CustomTextFormAuth(
                mycontroller: controller.email,
                hinttext: "Enter your email ",
                iconData: Icons.email_outlined,
                labeltext: "Email",
              ),


              CustomButtonAuth(

                text: "Check",
                onPressed: (){
                  controller.goToVerfiyCode();
                },
              ),
              const SizedBox(height: 30,),

            ],
          ),
        )

    );
  }
}