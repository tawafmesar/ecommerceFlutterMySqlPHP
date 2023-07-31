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

import '../widget/home/customappbar.dart';
import '../widget/home/customtitlehome.dart';
import '../widget/home/listitemshome.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      Get.put(HomeControllerImp());
    return Scaffold(
      body: GetBuilder<HomeControllerImp>(builder:
          (controller)=> HandlingDataView(
              statusRequest: controller.statusRequest,
              widget:      Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ListView(
                    children: [
                      CustomAppBar(titleappbar: "Find product", onPressedIcon: (){},onPressedSearch: (){},),
                        const  CustomCardHome( title: 'A summer suprise ', body: 'Cashback 20%',),
                      const  ListCategoriesHome(),
                     const SizedBox(height: 10,),
                      const CustomTitleHome(title: 'Product for you'),
                      const SizedBox(height: 10),
                      const ListItemsHome(),

                      const CustomTitleHome(title: 'Offers'),
                      const SizedBox(height: 10),
                      const ListItemsHome(),

                    ],
                  )
              )
          )
      ),
    );
  }
}