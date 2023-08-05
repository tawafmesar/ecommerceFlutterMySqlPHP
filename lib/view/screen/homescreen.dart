import 'package:ecommerce_flutter_php_mysql/controller/homescreen_controller.dart';
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
                        MaterialButton(
                          onPressed: () {
                            controller.ChangPage(0);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [Icon(Icons.home), Text("Home")],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                           controller.ChangPage(1);
         
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [Icon(Icons.home), Text("Settings")],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            controller.ChangPage(2);

                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [Icon(Icons.home), Text("Profile")],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                             controller.ChangPage(3);

                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [Icon(Icons.home), Text("Favorite")],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              body: controller.listPage.elementAt(controller.currentpage),
            ));
  }
}
