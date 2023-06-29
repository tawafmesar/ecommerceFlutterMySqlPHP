import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/forgetpassword.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/login.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/resetpassword.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/signup.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/success_signup.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/successrestpassword.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/verifycode.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.onBoarding: (context) => const onBoarding(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerifyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp()

};
