import 'package:ecommerce_flutter_php_mysql/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/routes.dart';

class MyMiddleWare extends GetMiddleware{

  @override
  int ? get priority => 1  ;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {

    if(myServices.sharedPreferences.getString("onboarding") == "1"){
      return const RouteSettings(name: AppRoute.login) ;

    }

  }
}