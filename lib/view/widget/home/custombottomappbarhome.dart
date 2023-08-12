import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/homescreen_controller.dart';
import 'custombuttonappbar.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            children: [

              ...List.generate(controller.listPage.length + 1,
                      (index) {
                    int i = index > 2 ? index  -1 : index;
                    return index == 2 ? const Spacer() :
                    CustomButtonAppBar(
                      textbutton: controller.titlebottomappbar[i],
                      onPressed: (){
                        controller.ChangPage(i);
                      },
                      icondata: Icons.home,
                      active: controller.currentpage == index   ? true : false,
                    );
                  }
              )
              // Row(
              //   children: [
              //     CustomButtonAppBar(textbutton: "Home",
              //         onPressed: (){
              //           controller.ChangPage(0);
              //         },
              //         icondata: Icons.home,
              //         active: controller.currentpage == 0 ? true : false,
              //     )
              //     ,
              //     CustomButtonAppBar(textbutton: "Settings",
              //         onPressed: (){
              //           controller.ChangPage(1);
              //         },
              //         icondata: Icons.settings,
              //       active: controller.currentpage == 1 ? true : false,
              //     )
              //     ,
              //   ],
              // ),
              // Spacer(),
              // Row(
              //   children: [
              //     CustomButtonAppBar(textbutton: "Profile",
              //         onPressed: (){
              //           controller.ChangPage(2);
              //         },
              //         icondata: Icons.account_box,
              //       active: controller.currentpage == 2 ? true : false,
              //     ),
              //     CustomButtonAppBar(textbutton: "Favorite",
              //         onPressed: (){
              //           controller.ChangPage(3);
              //         },
              //         icondata: Icons.favorite,
              //       active: controller.currentpage == 3 ? true : false,
              //     ),
              //   ],
              // )
            ],
          ),
        )
    );
  }
}