import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:gym_app/src/app_routes.dart';
import 'package:gym_app/src/pages/auth/widgets/sign_in_page.dart';

class GymApp extends StatelessWidget {
  const GymApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
      getPages: AppRoute.appRoutes,
    );
  }
}
