import 'package:ecommerce_flutter_php_mysql/core/services/services.dart';
import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/constant/routes.dart';
import '../core/functions/handingdatacontroller.dart';
import '../data/datasource/remote/home_data.dart';

abstract class ItemsController extends GetxController {
  initialData();
  changeCat(int val);

}

class ItemsControllerImp extends ItemsController{

  List categories = [];
  int? selectedCat ;


  @override
  void onInit() {
    initialData();
    super.onInit();
  }


  @override
  initialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selected'];
  }


  @override
  changeCat(val) {

    selectedCat = val;
    update();
  }





}

