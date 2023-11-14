import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_flutter_php_mysql/core/class/handlingdataview.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/items/listcategoriesitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/items_controller.dart';
import '../../data/model/itemsmodel.dart';
import '../../linkapi.dart';
import '../widget/customappbar.dart';
import '../widget/items/customlistitems.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());

    return Scaffold(
      body: Container(
        padding:const EdgeInsets.all(15),
        child:  ListView(children: [
                  CustomAppBar(
                      titleappbar: "Find Product",
                      onPressedIcon: () {},
                      onPressedSearch: () {}),
                  const SizedBox(height: 20),
                  const ListCategoriesItems(),
                  GetBuilder<ItemsControllerImp>(
                      builder: (controller) => HandlingDataView(
                      statusRequest: controller.statusRequest,
                      widget:
                  GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount:controller.data.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 0.7),
                      itemBuilder: (BuildContext context, index) {
                        return CustomListItems(
                          active: false,
                            itemsModel:
                            ItemsModel.fromJson(controller.data[index]));
                      })))
                ]),
      ),
    );
  }
}