import 'package:get/get.dart';

import '../data/model/itemsmodel.dart';


abstract class ProductDetailsController extends GetxController {}

class ProductDetailsControllerImp extends ProductDetailsController {

  late ItemsModel itemsModel ;

  inialData(){
    itemsModel = Get.arguments['itemsmodel'];
  }

  @override
  void onInit() {
    inialData();
    super.onInit();
  }


}