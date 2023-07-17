import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController{
  goToPageLogin();

}
class SuccessSignUpControllerImp extends SuccessSignUpController {

  String? email;
  String? password;


  @override
  goToPageLogin() {
    Get.toNamed(AppRoute.login,
        arguments: {"emailsignup" : email
          , "passwordssignup" : password
        }

    );
  }


  @override
  void onInit() {
    email = Get.arguments['email'];
    password = Get.arguments['password'];

    super.onInit();
  }


}
