import 'package:get/get.dart';
import 'package:gym_app/src/pages/auth/widgets/sign_in_page.dart';

class AppRoute {
  static List<GetPage> appRoutes = [
    GetPage(
      name: '/sign_in_page',
      page: () => SignInPage(),
    ),
  ];
}
