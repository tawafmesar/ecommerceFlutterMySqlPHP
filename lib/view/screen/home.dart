import 'package:ecommerce_flutter_php_mysql/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller =    Get.put(HomeControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(
        child:  Center(
          child: Text("${controller.username}" "${controller.id}" ),
        ),
      )

    );
  }
}
