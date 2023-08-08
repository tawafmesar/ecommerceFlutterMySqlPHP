import 'package:ecommerce_flutter_php_mysql/controller/homescreen_controller.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/home/custombuttonappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.shopping_basket_outlined),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: BottomAppBar(
                shape: CircularNotchedRectangle(),
                notchMargin: 10,
                child: Row(
                  children: [
                    Row(
                      children: [
                        CustomButtonAppBar(textbutton: "Home",
                            onPressed: (){
                              controller.ChangPage(0);
                            },
                            icondata: Icons.home,
                            active: controller.currentpage == 0 ? true : false,
                        )
                        ,
                        CustomButtonAppBar(textbutton: "Settings",
                            onPressed: (){
                              controller.ChangPage(1);
                            },
                            icondata: Icons.settings,
                          active: controller.currentpage == 1 ? true : false,
                        )
                        ,
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        CustomButtonAppBar(textbutton: "Profile",
                            onPressed: (){
                              controller.ChangPage(2);
                            },
                            icondata: Icons.account_box,
                          active: controller.currentpage == 2 ? true : false,
                        ),
                        CustomButtonAppBar(textbutton: "Favorite",
                            onPressed: (){
                              controller.ChangPage(3);
                            },
                            icondata: Icons.favorite,
                          active: controller.currentpage == 3 ? true : false,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              body: controller.listPage.elementAt(controller.currentpage),
            )
    );
  }
}
