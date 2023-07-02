import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/color.dart';
import '../../../widget/auth/custombuttonauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Title(
          color: Colors.white,
          child: Text("success ",
            style: Theme.of(context).textTheme.headline1!.copyWith(
                color: AppColor.grey
            ),),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(

          children: [
             Center(
              child: Icon(Icons.check_circle_outline,
                size: 200,
                color: AppColor.primaryColor,
              ),
            ),
            Text("37".tr ,
                style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 30)),            Text("...."),
            Text("36".tr),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomButtonAuth(
                text: "31".tr,
                onPressed: (){
                  //  controller.SignUp();
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
