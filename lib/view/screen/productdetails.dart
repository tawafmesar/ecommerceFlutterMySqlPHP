import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_flutter_php_mysql/controller/productdetails_controller.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/data/model/itemsmodel.dart';
import 'package:ecommerce_flutter_php_mysql/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/productdetails/priceandcount.dart';
import '../widget/productdetails/subitemslist.dart';
import '../widget/productdetails/toppageproductdetails.dart';

class ProductDetails extends StatelessWidget {

  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller = Get.put(ProductDetailsControllerImp());
    return Scaffold(
      bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 40,
          child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: AppColor.secondColor,
              onPressed: () {},
              child: const Text(
                "Add To Cart",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ))),
      body: Container(
        child: ListView(
          children: [
            TopProductPageDetails(),
            const SizedBox(
              height: 100,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("${controller.itemsModel.itemsName}",
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: AppColor.fourthColor,
                    )),
                const SizedBox(height: 10),
                PriceAndCountItems(
                    onAdd: () {}, onRemove: () {}, price: "200.0", count: "2"),
                const SizedBox(height: 10),

                Text(
                    "${controller.itemsModel.itemsDesc} ${controller.itemsModel.itemsDesc} ${controller.itemsModel.itemsDesc} ${controller.itemsModel.itemsDesc} ${controller.itemsModel.itemsDesc}",
                    style: Theme.of(context).textTheme.bodyText1),
                const SizedBox(height: 10),
                Text("Color",
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: AppColor.fourthColor,
                    )),
                const SizedBox(height: 10),

              ]),
            ),
            const SubitemsList(),

          ],
        ),
      ),
    );
  }
}
