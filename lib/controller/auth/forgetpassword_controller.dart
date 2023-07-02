import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController{
  checkemail();
  goToVerfiyCode();

}
class ForgetPasswordControllerImp extends ForgetPasswordController {

  late TextEditingController email;


  @override
  checkemail() {

  }

  @override
  goToVerfiyCode() {
    Get.toNamed(AppRoute.verifyCode);
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
