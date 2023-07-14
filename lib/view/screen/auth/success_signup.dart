import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/successsignup_controller.dart';
import '../../widget/auth/custombuttonauth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    SuccessSignUpControllerImp controller = Get.put(SuccessSignUpControllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Title(
          color: Colors.white,
          child: Text( "32".tr //"success "
            ,
          style: Theme.of(context).textTheme.headline1!.copyWith(
            color: AppColor.grey
          ),),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(

          children: [
           const Center(
              child: Icon(Icons.check_circle_outline,
              size: 200,
                color: AppColor.primaryColor,
              ),
            ),
            Text("...."),
            Text("...."),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomButtonAuth(
                text:"31".tr //"Go to Login"
                ,
                onPressed: (){
                  controller.goToPageLogin();
                },
              ),
            ),
            const SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
