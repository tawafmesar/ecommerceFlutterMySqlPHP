import 'package:ecommerce_flutter_php_mysql/core/services/services.dart';
import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/constant/routes.dart';
import '../core/functions/handingdatacontroller.dart';
import '../data/datasource/remote/home_data.dart';

abstract class HomeController extends GetxController {
  initialData();
  getdata();
  goToItems(List categories, int selectedCat, String categoryid);

}

class HomeControllerImp extends HomeController{

  MyServices myServices = Get.find();
  String? username;
  String? id;

  HomeData homedata = HomeData(Get.find());

  List data = [];
  List categories = [];
  List items = [];


  late StatusRequest statusRequest;

  @override
  initialData() {

    username = myServices.sharedPreferences.getString("username") ;
    id = myServices.sharedPreferences.getString("id") ;
  }

  @override
  void onInit() {
    getdata() ;
    initialData();
    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
        items.addAll(response['items']);

      } else {
        statusRequest = StatusRequest.failure ;
      }
    }
    update();
  }

  @override
  goToItems(categories, selectedCat, categoryid ) {
    Get.toNamed(AppRoute.items, arguments: {
      "categories": categories,
      "selectedcat": selectedCat,
      "catid": categoryid
    });

}
}

