import 'package:ecommerce_flutter_php_mysql/controller/home_controller.dart';
import 'package:ecommerce_flutter_php_mysql/core/class/handlingdataview.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/core/functions/handingdatacontroller.dart';
import 'package:ecommerce_flutter_php_mysql/linkapi.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/home/CustomCardHome.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/home/listcategorieshome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';
import '../widget/customappbar.dart';
import '../widget/home/customtitlehome.dart';
import '../widget/home/listitemshome.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      Get.put(HomeControllerImp());
    return  GetBuilder<HomeControllerImp>(builder:
          (controller)=> HandlingDataView(
              statusRequest: controller.statusRequest,
              widget:      Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ListView(
                    children: [
                      CustomAppBar(titleappbar: "Find product", onPressedIcon: (){},onPressedSearch: (){}, onPressedIconFavorite: () {
                        Get.toNamed(AppRoute.myfavroite) ;   },),
                        const  CustomCardHome( title: 'A summer suprise ', body: 'Cashback 20%',),
                      const CustomTitleHome(title: 'Categories'),
                      const  ListCategoriesHome(),
                      const CustomTitleHome(title: 'Product for you'),
                      const ListItemsHome(),
                      const CustomTitleHome(title: 'Offers'),
                      const ListItemsHome(),

                    ],
                  )
              )
          )
      )
    ;
  }
}