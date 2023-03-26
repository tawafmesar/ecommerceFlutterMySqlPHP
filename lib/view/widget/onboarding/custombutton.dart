import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonOnBoard extends StatelessWidget {
  const CustomButtonOnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 45,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        textColor: Colors.white,
        onPressed: () {},
        color: AppColor.primaryColor,
        child: const Text('Continue'),
      ),
    );
  }
}