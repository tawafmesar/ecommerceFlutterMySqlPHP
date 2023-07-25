import 'package:ecommerce_flutter_php_mysql/controller/home_controller.dart';
import 'package:ecommerce_flutter_php_mysql/core/class/handlingdataview.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/core/functions/handingdatacontroller.dart';
import 'package:ecommerce_flutter_php_mysql/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

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
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(children: [
                          Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    hintText: "Find Product",
                                    hintStyle: TextStyle(fontSize: 18),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(10)),
                                    filled: true,
                                    fillColor: Colors.grey[200]),
                              )),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)),
                            width: 60,
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.notifications_active_outlined,
                                  size: 30,
                                  color: Colors.grey[600],
                                )),
                          )
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric( vertical: 15),
                        child: Stack(children: [
                          Container(
                            alignment: Alignment.center,
                            child: ListTile(
                              title: Text("A summer surprise"  , style: TextStyle(color: Colors.white , fontSize: 20)),
                              subtitle: Text("Cashback 20%"  , style: TextStyle(color: Colors.white , fontSize: 30)),
                            ),
                            height: 150,
                            decoration: BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius: BorderRadius.circular(20)),
                          ) ,
                          Positioned(
                            top: -20,
                            right: -20,
                            child: Container(height: 160,width: 160,decoration: BoxDecoration(
                                color: AppColor.secondColor ,
                                borderRadius: BorderRadius.circular(160)
                            ),),
                          ),

                        ]),
                      ),
                      Container(
                        height: 70,
                        child: ListView.separated(
                            separatorBuilder: (context , index) =>
                                SizedBox(width: 10,),
                            itemCount: controller.categories.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context , index){
                              return  Container(
                                decoration: BoxDecoration(
                                  color: AppColor.thirdColor,

                                ),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 70,
                                width: 70,
                                child:
                                SvgPicture.network(
                                  "${AppLink.imagestCategories}/${controller.categories[index]['categories_image']}",
                                ),
                              );
                            }
                        ),
                      )
                    ],
                  )
              )
          )

      )
    );
  }
}