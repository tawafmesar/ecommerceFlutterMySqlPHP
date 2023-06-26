
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/auth/logoauth.dart';
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
            children:  [
              const LogoAuth(),
              const CustomTextTitleAuth(text:"Welcome Back " ),
              const SizedBox(height: 10,),
              const CustomTextBodyAuth(text: "Sign In With Your Email And Password Or Continue Social Media "),
              const SizedBox(height: 15,),
              const CustomTextFormAuth(
                hinttext: "Enter your email ",
                iconData: Icons.email_outlined,
                labeltext: "Email",
                // mycontroller: ,
              ),
              const CustomTextFormAuth(
                hinttext: "Enter your password ",
                iconData: Icons.lock,
                labeltext: "Password",
                // mycontroller: ,
              ),
              const Text("Forget Password",
              textAlign: TextAlign.end,
              ),
              CustomButtonAuth(
                text: "Sign In",
                onPressed: (){},
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ? "),
                  InkWell(
                    child: Text("Sign up"
                      ,style: TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),),

                  )
                ],
              )




            ],
          ),
        )

    );
  }
}