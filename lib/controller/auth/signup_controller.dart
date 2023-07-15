import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../data/datasource/remote/auth/signup.dart';

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

  bool isshopassword = true;

   StatusRequest? statusRequest;

  SignupData signupData = SignupData(Get.find());

  List data = [];

  showPassword(){
    isshopassword = isshopassword == true ? false : true;
    update();
  }




  @override
  SignUp() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postData(username.text,password.text,email.text,phone.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
        //  data.addAll(response['data']);
          Get.offNamed(AppRoute.verifyCodeSignUp ,
              arguments: {"email" : email.text
               // , "password" : password.text
              }
          );

        } else {
          Get.defaultDialog(title: "Warning",middleText: "Phone number or email already exists");
          statusRequest = StatusRequest.failure ;
        }
      }
      update();
   //   Get.delete<SignUpControllerImp>();

    } else {

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