
import 'package:ecommerce_flutter_php_mysql/controller/auth/signup_controller.dart';
import 'package:ecommerce_flutter_php_mysql/core/class/statusrequest.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../core/class/handlingdataview.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/functions/validinput.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(SignUpControllerImp());

    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColor.backgroundcolor,
            elevation: 0.0,
            centerTitle: true,
            title: Text("17".tr
                //"Sign Up"
                ,style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)) ),
        body:WillPopScope(
          onWillPop: alerExitApp
          ,child: GetBuilder<SignUpControllerImp>(
          builder:
              (controller) =>

                  HandlingDataViewRequest(statusRequest: controller.statusRequest,
                       widget:
                      Container(
                padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                child: Form(
                  key: controller.formstate,
                  child: ListView(
                    children:  [
                      CustomTextTitleAuth(text:"10".tr
                        //"Welcome Back "
                      ),
                      const SizedBox(height: 10,),
                      CustomTextBodyAuth(text: "24".tr //"Sign In With Your Email And Password Or Continue Social Media "
                      ),
                      const SizedBox(height: 15,),
                      CustomTextFormAuth(
                          keyboardType: TextInputType.text,
                          valid: (val){
                            return validInput(val!, 3, 20, "username");
                          },
                          mycontroller: controller.username,
                          hinttext: "23".tr //"Enter your Username "
                          ,
                          iconData: Icons.person,
                          labeltext:"20".tr
                        //"Username"
                      ),
                      CustomTextFormAuth(
                        keyboardType: TextInputType.emailAddress,
                        valid: (val){
                          validInput(val!, 3, 40, "email");
                        },
                        mycontroller: controller.email,
                        hinttext:"12".tr // "Enter your email "
                        ,
                        iconData: Icons.email_outlined,
                        labeltext: "18".tr//"Email"
                        ,
                      ),
                      CustomTextFormAuth(
                        keyboardType: TextInputType.phone,
                        valid: (val){
                          return validInput(val!, 7, 11, "phone");
                        },
                        mycontroller: controller.phone,
                        hinttext: "22".tr //"Enter your phone "
                        ,
                        iconData: Icons.phone,
                        labeltext: "21".tr // "Phone"
                        ,
                      ),
                      GetBuilder<SignUpControllerImp>(builder: (controller) =>
                          CustomTextFormAuth(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: controller.isshopassword ,
                            onTapIcon: (){
                              controller.showPassword();
                            },
                            valid: (val){
                              return validInput(val!, 3, 30, "password");
                            },
                            mycontroller: controller.password,
                            hinttext: "13".tr //"Enter your password "
                            ,
                            iconData: Icons.lock,
                            labeltext: "19".tr // "Password"
                            ,
                          )
                      ),
                      CustomButtonAuth(
                        text: "17".tr //"Sign Up"
                        ,
                        onPressed: (){
                          controller.SignUp();
                        },
                      ),
                      const SizedBox(height: 30,),
                      CustomTextSignUpOrSignIn(
                          textone: "25".tr //" Have an account ?  "
                          ,
                          texttwo: "26".tr // " Login "
                          ,
                          onTap: () {
                            controller.goToLogin();
                          }
                      )
                    ],
                  ),
                ),
              )
          )
    )
        )
    );
  }
}