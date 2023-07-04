import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alerExitApp(){
  Get.defaultDialog(
    title: "warning",
    middleText: "Do you want to exit the application",
      actions: [
        ElevatedButton(onPressed: (){
          exit(0);
        },
            child: Text("Confirm")
        ),
        ElevatedButton(onPressed: (){
          Get.back();
        },
            child: Text("Cancel")
        )
      ]
  );
  return Future.value(true);
}