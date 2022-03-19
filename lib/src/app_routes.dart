import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_app/src/pages/auth/widgets/sign_in_page.dart';
import 'package:gym_app/src/widgets/loading_display/loading_widget.dart';

class AppRoute {
  static List<GetPage<Widget>> appRoutes = [
    GetPage(
      name: '/sign_in_page',
      page: () => SignInPage(),
    ),

    // Loading screen demo
    GetPage(
      name: '/loading_screen',
      page: () => Scaffold(
        body: Column(
          children: [
            LoadingDisplay(),
          ],
        ),
      ),
    ),
  ];
}
