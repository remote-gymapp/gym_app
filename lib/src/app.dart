import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:gym_app/src/pages/auth/widgets/sign_in_page.dart';
import 'package:gym_app/src/pages/auth/widgets/sign_up_page.dart';

class GymApp extends StatelessWidget {
  const GymApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}
