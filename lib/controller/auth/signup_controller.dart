import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController{
  SignUp();
  goToLogin();
}
class SignUpControllerImp extends SignUpController {

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;


  @override
  SignUp() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(AppRoute.verifyCodeSignUp);
   //   Get.delete<SignUpControllerImp>();
    } else {
      print("Not Valid");
    }

  }

  @override
  goToLogin() {
    //Get.delete<SignUpControllerImp>();

    Get.offNamed(AppRoute.login);

  }


  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();

    super.onInit();

  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}