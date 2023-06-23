import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/language/custombuttomlang.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Choose Language" , style: Theme.of(context).textTheme.displayLarge),
            const  SizedBox(height: 20,),
            CustoButtomLang(textbuttom: 'AR',onPressed: (){}),
            CustoButtomLang(textbuttom: 'EN',onPressed: (){})
          ],
        ),
      ),
    );
  }
}
