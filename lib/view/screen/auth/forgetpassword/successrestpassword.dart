import 'package:flutter/material.dart';

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
            const Center(
              child: Icon(Icons.check_circle_outline,
                size: 200,
                color: AppColor.primaryColor,
              ),
            ),
            Text("...."),
            Text("...."),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtonAuth(
                text: "Go to Login",
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
