import 'package:flutter/material.dart';
class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;

  const CustomTextFormAuth({Key? key, required this.hinttext, required this.labeltext, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        // controller: mycontroller,

        decoration:  InputDecoration(

            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:const EdgeInsets.symmetric(vertical: 5,horizontal: 30),
            suffixIcon: Icon(iconData),
                label: Container(
                margin:const EdgeInsets.symmetric(horizontal: 10),
                child: Text(labeltext)),
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30)
      )
      ),
      ),
    );
  }
}
