import 'package:flutter/material.dart';

import '../widget/customappbar.dart';
import '../widget/home/listcategorieshome.dart';
class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomAppBar(
              titleappbar: "Find product",
              onPressedIcon: (){},
              onPressedSearch: (){},),
            const  ListCategoriesHome(),

          ],
        ),
      )
      ,
    );
  }
}
