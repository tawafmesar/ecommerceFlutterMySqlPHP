import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController{
  checkCode();
  goToSuccessSignUp();

}
class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {

  late String verifycode;


  @override
  checkCode() {

  }

  @override
  goToSuccessSignUp() {
    Get.toNamed(AppRoute.successSignUp);
  }




  @override
  void onInit() {

    super.onInit();

  }

  @override
  void dispose() {

    super.dispose();
  }

}