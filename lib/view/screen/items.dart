import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/items/listcategoriesitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/items_controller.dart';
import '../../linkapi.dart';
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
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2 ,
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.7),
                itemBuilder: (BuildContext context , index) {
              return InkWell(child: Card(

                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CachedNetworkImage(imageUrl:  AppLink.imagestItems + "/"),

                      Text("Laptop Surface Go" , style: TextStyle(color: AppColor.black ,fontSize: 16,fontWeight: FontWeight.bold),),
                      Text("Laptop Surface Go",textAlign: TextAlign.center,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("200.10 \$" , style: TextStyle(color: AppColor.primaryColor ,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "sans"),),

                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined))

                        ],)

                    ],
                  ),
                ),
              ),);

              }
            )

          ],
        ),
      )
      ,
    );
  }
}
