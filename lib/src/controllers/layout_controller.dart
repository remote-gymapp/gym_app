import 'package:get/get.dart';
import 'package:gym_app/src/models/titled_widget.dart';

import 'package:gym_app/src/pages/dashboard/widget/dashboard_page.dart';
import 'package:gym_app/src/pages/workout/widget/workout_page.dart';
import 'package:gym_app/src/pages/diet/widget/diet_page.dart';
import 'package:gym_app/src/pages/body/widget/body_page.dart';

class Pages {
  static int dashboard = 0;
  static int workout = 1;
  static int diet = 2;
  static int body = 3;
}

class LayoutController extends GetxController {
  final List<TitledWidget> pages = [
    DashboardPage(),
    DietPage(),
    WorkoutPage(),
    BodyPage(),
  ];

  RxBool isAppBarEnabled = true.obs;
  RxBool isNavBarEnabled = true.obs;

  late TitledWidget currentPage;

  RxInt currentIndex = Pages.workout.obs;

  RxString get appBarTitle {
    return currentPage.title.obs;
  }

  @override
  onInit() {
    super.onInit();
    currentPage = pages[Pages.workout];
  }

  updateCurrentIndex(int newIndex) {
    // ignore dashboard and body for now
    if (newIndex == Pages.dashboard || newIndex == Pages.body) {
      return;
    }

    currentIndex(newIndex);
    currentPage = pages[currentIndex.value];
  }
}
