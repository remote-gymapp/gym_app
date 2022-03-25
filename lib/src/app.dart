import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:gym_app/src/pages/auth/widgets/sign_in_page.dart';
import 'package:gym_app/src/theme/app_theme.dart';

class GymApp extends StatelessWidget {
  const GymApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.themeData,
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
