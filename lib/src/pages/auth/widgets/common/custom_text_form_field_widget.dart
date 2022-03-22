import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  String labelText;
  Widget? prefixIcon;

  TextEditingController? textEditingController;
  String? Function(String?)? validator;

  Widget? suffixIcon;
  Function(String)? onChanged;
  bool? isPasswordField;
  bool? isObscureText;
  Color fillColor = Color(0XFF1C2939);

  CustomTextFormField({
    required this.labelText,
    required this.prefixIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width * 0.85,
      child: TextFormField(
        validator: validator,
        controller: textEditingController,
        decoration: InputDecoration(
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
        ),
      ),
    );
  }
}
