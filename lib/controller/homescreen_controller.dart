import 'package:ecommerce_flutter_php_mysql/core/services/services.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handingdatacontroller.dart';
import '../data/datasource/remote/home_data.dart';

abstract class HomeScreenController extends GetxController {
  ChangPage(int currentpage);

}

class HomeScreenControllerImp extends HomeScreenController{
  int currentpage = 0 ;


List<Widget> listPage = [
  const Home(),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(child: Text("Settings"),)
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(child: Text("Profile"),)
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(child: Text("Favorite"),)
    ],
  )

];
  @override
  ChangPage(int i) {

    currentpage = i;
    update();

  }



}

