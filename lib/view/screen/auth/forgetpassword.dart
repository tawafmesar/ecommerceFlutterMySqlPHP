
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
            title: Text("Sign Up",style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)) ),
        body:Container(
          padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
          child: ListView(
            children:  [
              const CustomTextTitleAuth(text:"Welcome Back " ),
              const SizedBox(height: 10,),
              const CustomTextBodyAuth(text: "Sign In With Your Email And Password Or Continue Social Media "),
              const SizedBox(height: 15,),
              CustomTextFormAuth(
                hinttext: "Enter your Username ",
                iconData: Icons.person,
                labeltext: "Username",
              ),
              CustomTextFormAuth(
                mycontroller: controller.email,
                hinttext: "Enter your email ",
                iconData: Icons.email_outlined,
                labeltext: "Email",
              ),
              CustomTextFormAuth(
                hinttext: "Enter your phone ",
                iconData: Icons.phone,
                labeltext: "Phone",
              ),
              CustomTextFormAuth(
                hinttext: "Enter your password ",
                iconData: Icons.lock,
                labeltext: "Password",
              ),
              const Text("Forget Password",
                textAlign: TextAlign.end,
              ),
              CustomButtonAuth(
                text: "Sign Up",
                onPressed: (){},
              ),
              const SizedBox(height: 30,),
              CustomTextSignUpOrSignIn(
                  textone: " Have an account ?  ",
                  texttwo: " Login ",
                  onTap: () {
                    // controller.goToLogin();
                  }
              )
            ],
          ),
        )

    );
  }
}