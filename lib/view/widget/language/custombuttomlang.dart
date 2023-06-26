import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustoButtomLang extends StatelessWidget {
  final String textbuttom ;
  final void Function()? onPressed;
  const CustoButtomLang({Key? key, required this.textbuttom, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.primaryColor,
        onPressed: onPressed,
        textColor: Colors.white,
        child: Text( textbuttom,style: const TextStyle(fontWeight: FontWeight.w900),),
      ),
    );
  }
}
