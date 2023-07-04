import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController{
  ResetPassword();
  goToSuccessResetPassword();

}
class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController repassword;


  @override
  ResetPassword() {

  }

  @override
  goToSuccessResetPassword() {
    if (formstate.currentState!.validate()) {
      Get.toNamed(AppRoute.successResetPassword);
    } else {
      print("Not Valid");
    }
  }


  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();

    super.onInit();

  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
