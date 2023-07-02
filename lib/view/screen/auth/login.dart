
import 'package:ecommerce_flutter_php_mysql/controller/auth/login_controller.dart';
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

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {

    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          centerTitle: true,
            title: Text("9".tr
                ,style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)) ),
        body:Container(
          padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
          child: ListView(
            children:  [
              const LogoAuth(),
               CustomTextTitleAuth(text:
              "10".tr
              //"Welcome Back "
              ),
              const SizedBox(height: 10,),
               CustomTextBodyAuth(text: "11".tr
               //"Login With Your Email And Password Or Continue Social Media "
               ),
              const SizedBox(height: 15,),
               CustomTextFormAuth(
                mycontroller: controller.email,
                hinttext: "12".tr
                //"Enter your email "
                 ,
                iconData: Icons.email_outlined,
                labeltext: "18".tr,
                // mycontroller: ,
              ),
               CustomTextFormAuth(
                mycontroller: controller.password,
                hinttext:"13".tr
                //"Enter your password "
                ,
                iconData: Icons.lock,
                labeltext: "19".tr,
              ),
              InkWell(
                onTap: (){
                  controller.goToForgetPassword();
                },
                child: Text("14".tr
                  //"Forget Password"
                  ,
                textAlign: TextAlign.right,
                ),
              ),
              CustomButtonAuth(
                text: "15".tr,
                onPressed: (){},
              ),
              const SizedBox(height: 30,),
              CustomTextSignUpOrSignIn(
                textone: "16".tr
                //" Don't have an account ?  "
                  ,
                texttwo: "17".tr
                //" Sign up"
                ,
                onTap: () {
                  controller.goToSigUp();
                }
                )
            ],
          ),
        )
    );
  }
}