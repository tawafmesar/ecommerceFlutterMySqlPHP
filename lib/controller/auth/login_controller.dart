import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:ecommerce_flutter_php_mysql/core/services/services.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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

  String? emailsignup;
  String? passwordssignup;

  bool isshopassword = true;

  MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;

  showPassword() {
    isshopassword = !isshopassword;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postdata(email.text, password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          myServices.sharedPreferences.setString("id",response['data']['users_id']);
          myServices.sharedPreferences.setString("username", response['data']['users_name']);
          myServices.sharedPreferences.setString("email", response['data']['users_email']);
          myServices.sharedPreferences.setString("phone", response['data']['users_phone']);
          myServices.sharedPreferences.setString("step", "2" );

          Get.offNamed(AppRoute.homepage);
        } else {
          Get.defaultDialog(title: "Warning", middleText: "Email Or Password Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      // Form validation failed
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
    FirebaseMessaging.instance.getToken().then((value) {
      print(value);
      String? token = value;
    });

    email = TextEditingController();
    password = TextEditingController();

    super.onInit();

    emailsignup = Get.arguments?['emailsignup'];
    passwordssignup = Get.arguments?['passwordssignup'];

    email.text = emailsignup ?? '';
    password.text = passwordssignup ?? '';
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}