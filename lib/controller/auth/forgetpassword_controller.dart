import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController{
  checkemail();
  goToVerfiyCode();

}
class ForgetPasswordControllerImp extends ForgetPasswordController {

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  checkemail() {

  }

  @override
  goToVerfiyCode() {
    if (formstate.currentState!.validate()) {
      Get.toNamed(AppRoute.verifyCode);
    } else {
      print("Not Valid");
    }
  }


  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();

  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
