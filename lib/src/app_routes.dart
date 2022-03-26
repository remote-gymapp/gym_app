import 'package:get/get.dart';

import 'package:gym_app/src/pages/auth/widgets/sign_in_page.dart';
import 'package:gym_app/src/pages/screen_route.dart';
import 'package:gym_app/src/widgets/layout/layout_widget.dart';

class AppRoute {
  static List<GetPage> appRoutes = [
    GetPage(
      name: ScreenRoute.signInPage,
      page: () => SignInPage(),
    ),
    GetPage(
      name: ScreenRoute.main,
      page: () => Layout(),
    ),
  ];
}
