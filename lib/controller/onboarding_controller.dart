import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:ecommerce_flutter_php_mysql/core/services/services.dart';
import 'package:ecommerce_flutter_php_mysql/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;

  MyServices myServices = Get.find();

  @override
  next() {
    currentPage++;
    
    if (currentPage > onBoardingList.length - 1){
      myServices.sharedPreferences.setString("step", '1');
      Get.offAllNamed(AppRoute.login); 
    }
    else{

      pageController.animateToPage(currentPage,
      duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
  
    }

  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();

    super.onInit();
  }
}
