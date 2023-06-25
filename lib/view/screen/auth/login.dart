
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
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
          padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 35),
          child: ListView(
            children:  [
             const SizedBox(height: 20,),
              Text("Welcome Back ",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2,),
              const SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Text("Sign In With Your Email And Password Or Continue Social Media ",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,),
              ),
              const SizedBox(height: 25,),
              TextFormField(

                decoration:  InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 30),
                  suffixIcon: Icon(Icons.email_outlined),
                  label: Text("Email"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),

              )
            ],
          ),
        )

    );
  }
}