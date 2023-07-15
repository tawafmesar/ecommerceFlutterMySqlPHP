import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handingdatacontroller.dart';
import '../../data/datasource/remote/auth/verifycodesignup.dart';

abstract class VerifyCodeSignUpController extends GetxController{
  checkCode();
  goToSuccessSignUp();

}
class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {

  VerifyCodeSignupData verifyCodeSignupData = VerifyCodeSignupData(Get.find());

  late String verifycode;
    String? email;
  //  String? password;

  StatusRequest ? statusRequest;

  @override
  checkCode() {

  }

  @override
  goToSuccessSignUp() async {

    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeSignupData.postData(email! , verifycode);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.toNamed(AppRoute.successSignUp );

      } else {
        Get.defaultDialog(title: "Warning",middleText: "");
        statusRequest = StatusRequest.failure ;
      }
    }
    update();

  }




  @override
  void onInit() {
    email = Get.arguments['email'];
   // password = Get.arguments['password'];

    super.onInit();

  }

  @override
  void dispose() {

    super.dispose();
  }

}