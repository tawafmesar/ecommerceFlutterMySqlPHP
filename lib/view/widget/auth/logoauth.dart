
import 'package:ecommerce_flutter_php_mysql/core/constant/imgaeasset.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAsset.logo,height: 200,);
  }
}
