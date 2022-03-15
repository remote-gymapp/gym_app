import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  Widget childWidget;
  Function() onPressed;
  Color? color = Color(0XFF3772FF);
  CustomButtonWidget({
    Key? key,
    required this.childWidget,
    required this.onPressed,
    this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: childWidget,
      style: ElevatedButton.styleFrom(
        primary: color,
        fixedSize: Size(340, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    );
  }
}
