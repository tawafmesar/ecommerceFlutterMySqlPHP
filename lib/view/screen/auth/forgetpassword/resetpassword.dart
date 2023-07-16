import 'package:ecommerce_flutter_php_mysql/controller/forgetpassword/resetpassword_controller.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../../core/class/statusrequest.dart';
import '../../../../core/functions/validinput.dart';


class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());

    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColor.backgroundcolor,
            elevation: 0.0,
            centerTitle: true,
            title: Text("Reset Password",
                style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)) ),
        body:GetBuilder<ResetPasswordControllerImp>(
               builder: (controller) =>

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
                 CustomTextTitleAuth(text:"35".tr
              //  "New Password"
                ),
                const SizedBox(height: 10,),
                 CustomTextBodyAuth(text: "34".tr
               //  "Please enter new password "
                 ),
                const SizedBox(height: 15,),

               GetBuilder<ResetPasswordControllerImp>(builder: (controller) =>
                   CustomTextFormAuth(
                     keyboardType: TextInputType.visiblePassword,
                     obscureText: controller.isshopassword,
                     onTapIcon: (){
                       controller.showPassword();
                     },
                     valid: (val){
                       return validInput(val!, 3, 40, "password");
                     },
                     mycontroller: controller.password,
                     hinttext: "13".tr
                     //"Enter your password "
                     ,
                     iconData: Icons.lock,
                     labeltext: "19".tr,
                   )
               ),
                GetBuilder<ResetPasswordControllerImp>(
                    builder: (controller) =>
                        CustomTextFormAuth(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: controller.isshopassword,
                          onTapIcon: (){
                            controller.showPassword();
                          },
                          valid: (val){
                            return validInput(val!, 3, 40, "password");
                          },
                          mycontroller: controller.repassword,
                          hinttext: "Re" + " " + "13".tr,
                          iconData: Icons.lock,
                          labeltext: "19".tr,
                        )

                )
                ,
                CustomButtonAuth(
                  text: "33".tr,
                  onPressed: (){
                    controller.goToSuccessResetPassword();
                  },
                ),
                const SizedBox(height: 30,),
              ],
            ),
          ),
        )
        )
    );
  }
}