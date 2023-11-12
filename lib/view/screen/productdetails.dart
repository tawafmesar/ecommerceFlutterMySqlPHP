import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_flutter_php_mysql/controller/productdetails_controller.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/data/model/itemsmodel.dart';
import 'package:ecommerce_flutter_php_mysql/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {

  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller = Get.put(ProductDetailsControllerImp());
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(35))
                  ),
                ),
                  CachedNetworkImage(imageUrl: AppLink.imagestItems + "/" + controller.itemsModel.itemsImage!)
              ],
            )
          ],
        ),
      ),

    );
  }
}
