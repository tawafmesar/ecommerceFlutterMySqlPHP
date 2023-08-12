import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';



class CustomTitleHome extends StatelessWidget {
  final String title;

  const CustomTitleHome({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text( title
        ,style:const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryColor
        ),
      ),
    );
  }
}
