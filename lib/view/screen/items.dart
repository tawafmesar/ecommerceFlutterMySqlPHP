import 'package:ecommerce_flutter_php_mysql/view/widget/items/listcategoriesitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/items_controller.dart';
import '../widget/customappbar.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return Scaffold(
      body:
      Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomAppBar(
              titleappbar: "Find product",
              onPressedIcon: (){},
              onPressedSearch: (){},),
            const SizedBox(height: 20,),
            const  ListCategoriesItems(),

          ],
        ),
      )
      ,
    );
  }
}
