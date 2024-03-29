import 'package:ecommerce_flutter_php_mysql/bindings/intialbindings.dart';
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/core/localization/changelocal.dart';
import 'package:ecommerce_flutter_php_mysql/core/localization/translation.dart';
import 'package:ecommerce_flutter_php_mysql/core/services/services.dart';
import 'package:ecommerce_flutter_php_mysql/routes.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/language.dart';
import 'package:ecommerce_flutter_php_mysql/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    LocaleController controller =   Get.put(LocaleController()) ;

    return GetMaterialApp(

      translations: MyTranslation(),

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.appTheme,
    initialBinding: InitialBindings(),
    //  home: const Language(),
      //routes: routes,
      getPages: routes
    );
  }
}
