import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController{
  checkCode();
  goToRestPassword();

}
class VerifyCodeControllerImp extends VerifyCodeController {

  late String verifycode;


  @override
  checkCode() {

  }

  @override
  goToRestPassword() {
    Get.toNamed(AppRoute.resetPassword);
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