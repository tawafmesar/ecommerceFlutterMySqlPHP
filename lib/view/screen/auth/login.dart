
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          centerTitle: true,
            title: Text("Sign In",style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)) ),
        body:Container(
          padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
          child: ListView(
            children: const [
              SizedBox(height: 20,),
              CustomTextTitleAuth(text:"Welcome Back " ),
               SizedBox(height: 10,),
              CustomTextBodyAuth(text: "Sign In With Your Email And Password Or Continue Social Media "),
               SizedBox(height: 55,),
              CustomTextFormAuth(
                hinttext: "Enter your email ",
                iconData: Icons.email_outlined,
                labeltext: "Email",
                // mycontroller: ,
              ),
               CustomTextFormAuth(
                hinttext: "Enter your password ",
                iconData: Icons.lock,
                labeltext: "Password",
                // mycontroller: ,
              )
            ],
          ),
        )

    );
  }
}