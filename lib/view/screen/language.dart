import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/routes.dart';
import 'package:ecommerce_flutter_php_mysql/core/localization/changelocal.dart';
import 'package:ecommerce_flutter_php_mysql/view/widget/language/custombuttomlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr , style: Theme.of(context).textTheme.displayLarge),
            const  SizedBox(height: 20,),
            CustoButtomLang(textbuttom: 'AR',onPressed: (){
              controller.changeLang("ar");
              Get.toNamed(AppRoute.onBoarding);
            }),
            CustoButtomLang(textbuttom: 'EN',onPressed: (){
              controller.changeLang("en");
              Get.toNamed(AppRoute.onBoarding);
            })










          ],
        ),
      ),
    );
  }
}
