import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gym_app/src/pages/auth/widgets/common/custom_button_widget.dart';
import 'package:gym_app/src/pages/auth/widgets/common/custom_text_form_field_widget.dart';
import 'package:gym_app/src/pages/screen_route.dart';
import 'package:gym_app/src/theme/app_theme.dart';

class SignUpPage extends GetView {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppTheme.darkBg,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                flex: 1,
                child: _buildTitleArea(),
              ),
              Flexible(
                flex: 3,
                child: _buildFormArea(),
              ),
              Flexible(
                flex: 3,
                child: _buildConditionsArea(),
              ),
              Flexible(
                flex: 2,
                child: _buildSignUpButtonArea(),
              ),
              Flexible(
                flex: 1,
                child: _buildSignInPageTextArea(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row _buildTitleArea() {
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
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Form _buildFormArea() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Fill in form information in the fields below'),
          CustomTextFormField(
            prefixIcon: Icon(
              Icons.person,
              color: AppTheme.themeData.iconTheme.color,
            ),
            labelText: 'Name',
          ),
          CustomTextFormField(
            prefixIcon: Icon(
              Icons.alternate_email,
              color: AppTheme.themeData.iconTheme.color,
            ),
            labelText: 'E-mail',
          ),
          CustomTextFormField(
            prefixIcon: Icon(
              Icons.vpn_key_sharp,
              color: AppTheme.themeData.iconTheme.color,
            ),
            labelText: 'Password',
            isPasswordField: true,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.visibility,
                color: AppTheme.themeData.iconTheme.color,
              ),
              splashRadius: 1,
            ),
          ),
        ],
      ),
    );
  }

  Row _buildConditionsArea() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: true,
          onChanged: (value) {},
          activeColor: AppTheme.themeData.iconTheme.color,
        ),
        Text(
          'I agree to all terms and conditions',
        ),
      ],
    );
  }

  CustomButtonWidget _buildSignUpButtonArea() {
    return CustomButtonWidget(
      childWidget: Text(
        'Create Account',
        style: TextStyle(
          fontSize: 22.0,
        ),
      ),
      onPressed: () {},
    );
  }

  TextButton _buildSignInPageTextArea() {
    return TextButton(
      onPressed: () {
        Get.toNamed(ScreenRoute.signInPage);
      },
      child: Text(
        'I already have an account',
        style: TextStyle(
          color: AppTheme.secondaryTextColor,
          fontSize: 16,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
