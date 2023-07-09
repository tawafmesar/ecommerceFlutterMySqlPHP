import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:ecommerce_flutter_php_mysql/core/middleware/mymiddleware.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/login.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/signup.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/success_signup.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/forgetpassword/successrestpassword.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/auth/verifycodesignup.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/language.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


List<GetPage<dynamic>>? routes = [

  GetPage(name: "/", page: () => const Language() , middlewares: [
    MyMiddleWare()
  ]),
  GetPage(name: AppRoute.login , page: () => const Login()),
  GetPage(name: AppRoute.onBoarding , page: () => const onBoarding()),
  GetPage(name: AppRoute.signUp , page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword , page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verifyCode , page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword , page: () => const ResetPassword()),
  GetPage(name: AppRoute.successResetPassword , page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp , page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.verifyCodeSignUp , page: () => const VerifyCodeSignUp()),


];

// Map<String, Widget Function(BuildContext)> routes = {
//  AppRoute.login: (context) => ,
//  AppRoute.onBoarding: (context) => const onBoarding(),
//  AppRoute.signUp: (context) => const SignUp(),
//  AppRoute.forgetPassword: (context) => const ForgetPassword(),
//  AppRoute.verifyCode: (context) => const VerifyCode(),
//  AppRoute.resetPassword: (context) => const ResetPassword(),
//   AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
//   AppRoute.successSignUp: (context) => const SuccessSignUp(),
//   AppRoute.verifyCodeSignUp: (context) => const VerifyCodeSignUp(),
//
// };
