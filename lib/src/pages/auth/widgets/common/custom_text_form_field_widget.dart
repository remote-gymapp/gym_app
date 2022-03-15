import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String labelText;
  TextEditingController? textEditingController;
  String? Function(String?)? validator;
  Widget? prefixIcon;
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
      width: 340,
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
