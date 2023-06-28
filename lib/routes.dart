import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/forgetpassword.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/login.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/signup.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.onBoarding: (context) => const onBoarding(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword()

};
