import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController{
  checkEmail();
  goToSuccessSignUp();

}
class CheckEmailControllerImp extends CheckEmailController {

  late TextEditingController email;


  @override
  checkEmail() {

  }

  @override
  goToSuccessSignUp() {
    Get.toNamed(AppRoute.successSignUp);
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
