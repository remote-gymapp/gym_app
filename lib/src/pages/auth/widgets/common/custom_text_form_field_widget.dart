import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  String labelText;
  Widget? prefixIcon;

  TextEditingController? textEditingController;
  String? Function(String?)? validator;
  final Color focusedBorderColor = Color(0XFF3772FF);

  Widget? suffixIcon;
  Function(String)? onChanged;
  bool isPasswordField;
  Color fillColor = Color(0XFF1C2939);

  CustomTextFormField({
    required this.labelText,
    required this.prefixIcon,
    required this.isPasswordField,
    this.suffixIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width * 0.85,
      child: TextFormField(
        validator: validator,
        controller: textEditingController,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Colors.red,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: focusedBorderColor,
              width: 1,
            ),
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            fontSize: 21.0,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
          filled: true,
          fillColor: fillColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide.none,
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
        obscureText: isPasswordField,
      ),
    );
  }
}
