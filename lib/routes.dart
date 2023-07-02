import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/login.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/signup.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/success_signup.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/forgetpassword/successrestpassword.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/verifycodesignup.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

import 'view/screen/auth/checkemail.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.onBoarding: (context) => const onBoarding(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verifyCode: (context) => const VerifyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.checkEmail: (context) => const CheckEmail(),
  AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.verifyCodeSignUp: (context) => const VerifyCodeSignUp(),


};
