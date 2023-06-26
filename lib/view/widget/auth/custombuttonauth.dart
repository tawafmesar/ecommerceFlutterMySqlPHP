import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtonAuth({Key? key, required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
         padding:const EdgeInsets.symmetric(vertical: 13),
          onPressed: onPressed,
          textColor: Colors.white,
          color: AppColor.primaryColor,
          child: Text(text),

      ),
    );
  }
}
