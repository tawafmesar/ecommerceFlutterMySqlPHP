import 'package:flutter/material.dart';
class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final TextInputType? keyboardType ;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomTextFormAuth({Key? key,
    this.obscureText ,
    this.onTapIcon,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    this.mycontroller,
    required this.valid,
    this.keyboardType,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: keyboardType,

        validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false  ? false : true,        decoration:  InputDecoration(

            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:const EdgeInsets.symmetric(vertical: 5,horizontal: 30),
            suffixIcon: InkWell(
              child:  Icon(iconData) ,
              onTap: onTapIcon,
            )
            ,
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
