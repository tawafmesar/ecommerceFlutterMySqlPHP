import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController{
  login();
  goToSigUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

    late TextEditingController email;
    late TextEditingController password;


  @override
  login() {
    var formdata= formstate.currentState;
    if (formdata!.validate()){
      print(" valid");
    }else{
      print("not valid");
    }
  }

  @override
  goToSigUp() {
    Get.toNamed(AppRoute.signUp);
  }


  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  void onInit() {
     email = TextEditingController();
     password = TextEditingController();

    super.onInit();

  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}