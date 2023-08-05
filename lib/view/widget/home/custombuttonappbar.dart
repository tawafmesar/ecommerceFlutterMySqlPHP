import 'package:flutter/material.dart';


class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String textbutton;
  final IconData icondata;
  final Color coloritemSelected;


  const CustomButtonAppBar({super.key, this.onPressed, required this.textbutton, required this.icondata, required this.coloritemSelected});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(  onPressed: onPressed,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Icon(icondata,color: coloritemSelected), 
            Text(textbutton,style: TextStyle(color: coloritemSelected),)],
          ),
        );
  }
}