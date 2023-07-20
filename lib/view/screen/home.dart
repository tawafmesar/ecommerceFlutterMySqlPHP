import 'package:ecommerce_flutter_php_mysql/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller =    Get.put(HomeControllerImp());
    return Scaffold(

      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(  children: [
                Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon:Icon(Icons.search) ,
                        hintText: "Find product",
                        hintStyle: TextStyle(fontSize: 18),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none
                              ,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        filled: true,
                        fillColor: Colors.grey[200]
                      ),
                    )
                ),
                SizedBox(width: 10,),
                Container(
                     decoration: BoxDecoration(
                       color: Colors.grey[200],
                       borderRadius: BorderRadius.circular(10)
                     ),
                     width: 60,
                      padding: EdgeInsets.symmetric(vertical: 8),

                      child: IconButton(
                      onPressed: (){},
                      icon:Icon(
                        Icons.notifications_active_outlined,
                        size: 30,
                        color: Colors.grey[600],
                      )
                     ,)
                  ,)

            ],
            ),
            )

          ],
        ),
      )

    );
  }
}
