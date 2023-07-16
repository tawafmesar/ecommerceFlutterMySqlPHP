import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../data/datasource/remote/auth/login.dart';

abstract class LoginController extends GetxController{
  login();
  goToSigUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {

  LoginData loginData = LoginData(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

    late TextEditingController email;
    late TextEditingController password;


    bool isshopassword = true;
    StatusRequest? statusRequest;

    showPassword(){
      isshopassword = isshopassword == true ? false : true;
      update();
    }



  @override
  login() async{
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update() ;
      var response = await loginData.postdata(email.text , password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoute.homepage);

        } else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Email Or Password Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
      //   Get.delete<SignUpControllerImp>();

    } else {

    }
  }

  @override
  goToSigUp() {
    Get.offNamed(AppRoute.signUp);
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