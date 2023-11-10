import 'package:ecommerce_flutter_php_mysql/controller/home_controller.dart';
import 'package:ecommerce_flutter_php_mysql/core/functions/translatefatabase.dart';
import 'package:ecommerce_flutter_php_mysql/data/model/CategoriesModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../linkapi.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
   
  const ListCategoriesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return      SizedBox(
      height: 100,
      child: ListView.separated(
          separatorBuilder: (context , index) =>
          const SizedBox(width: 10,),
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){
            return Categories(
              i : index ,
              categoriesModel: CategoriesModel.fromJson(controller.categories[index]),)  ;
          }
      ),
    );
  }
}


class Categories extends GetView<HomeControllerImp> {
  final int? i;
  final CategoriesModel categoriesModel;
  const Categories( {Key? key, required this.categoriesModel , required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        controller.goToItems(controller.categories, i! , categoriesModel.categoriesId!);
        },
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
              color: AppColor.thirdColor,
              borderRadius: BorderRadius.circular(20)
          ),
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 70,
          width: 70,
          child:
          SvgPicture.network(
            "${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",
          ),
        ),
        Text(
          "${translateDatabase(categoriesModel.categoriesNamaAr, categoriesModel.categoriesName)}",
          style: const TextStyle(fontSize: 13, color: AppColor.black),
        )
      ],),
    );
  }
}
