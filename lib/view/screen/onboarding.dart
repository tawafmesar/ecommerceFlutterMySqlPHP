
import 'package:ecommerce_flutter_php_mysql/core/constant/color.dart';
import 'package:ecommerce_flutter_php_mysql/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class onBoarding extends StatelessWidget {
  const onBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: PageView.builder(
          
          itemCount: onBoardingList.length,
          itemBuilder:(context,i) =>   Column(
            children: [
                Text(onBoardingList[i].title!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 20),) ,
                  const SizedBox(height: 80,),
                Image.asset(onBoardingList[i].image!
                ,width: 200,height: 250,fit: BoxFit.fill,
                ),
                  const SizedBox(height: 80,),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(onBoardingList[i].body!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(height: 2,color: AppColor.grey,fontWeight: FontWeight.bold,fontSize: 17),
                   )
                  ),
                  
            ],

          )),
      )

      
    );
  }
}