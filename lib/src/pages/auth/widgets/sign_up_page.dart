import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gym_app/src/pages/auth/widgets/common/custom_button_widget.dart';
import 'package:gym_app/src/pages/auth/widgets/common/custom_text_form_field_widget.dart';

class SignUpPage extends GetView {
  final Color backgroundColor = Color(0Xff0C1727);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(flex: 1, child: _buildTitleArea()),
              Flexible(flex: 2, child: _buildSignUpFormArea()),
              Flexible(flex: 1, child: _buildSignUpTextNavigationArea()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleArea() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('dumbbell.png'),
        SizedBox(
          width: 20.0,
        ),
        Text(
          'Member Sign Up',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpFormArea() {
    return Form(
      key: _formKey,
      child: Flex(
        direction: Axis.vertical,
        children: [
          Flexible(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextFormField(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  labelText: 'Name',
                  isPasswordField: false,
                ),
                CustomTextFormField(
                  prefixIcon: Icon(
                    Icons.alternate_email,
                    color: Colors.white,
                  ),
                  labelText: 'E-mail',
                  isPasswordField: false,
                ),
                CustomTextFormField(
                  prefixIcon: Icon(
                    Icons.vpn_key_sharp,
                    color: Colors.white,
                  ),
                  labelText: 'Password',
                  isPasswordField: true,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility,
                      color: Colors.white,
                    ),
                    splashRadius: 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Colors.white,
                    ),
                    Text(
                      'I agree all terms and conditions',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: CustomButtonWidget(
              childWidget: Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSignUpTextNavigationArea() {
    return TextButton(
      onPressed: () {},
      child: Text(
        'I already have an account',
        style: TextStyle(
          color: Color(0XFF8D8D8D),
          fontSize: 16,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
