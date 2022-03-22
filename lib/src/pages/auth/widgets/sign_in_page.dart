import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gym_app/src/pages/auth/widgets/common/custom_button_widget.dart';
import 'package:gym_app/src/pages/auth/widgets/common/custom_text_form_field_widget.dart';

class SignInPage extends GetView {
  final Color backgroundColor = Color(0Xff0C1727);

  SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('dumbbell.png'),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'Member Login',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 2,
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                            prefixIcon: Icon(
                              Icons.alternate_email,
                              color: Colors.white,
                            ),
                            labelText: 'E-mail',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          CustomTextFormField(
                            prefixIcon: Icon(
                              Icons.vpn_key_sharp,
                              color: Colors.white,
                            ),
                            labelText: 'Password',
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: CustomButtonWidget(
                        childWidget: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 22.0,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Wrap(
                  direction: Axis.vertical,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0XFF3772FF),
                          fontSize: 23,
                        ),
                      ),
                    ),
                    Text(
                      'for a new account',
                      style: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
