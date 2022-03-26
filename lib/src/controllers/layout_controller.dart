import 'package:get/get.dart';
import 'package:gym_app/src/models/titled_widget.dart';

import 'package:gym_app/src/pages/dashboard/widget/dashboard_page.dart';
import 'package:gym_app/src/pages/workout/widget/workout_page.dart';
import 'package:gym_app/src/pages/diet/widget/diet_page.dart';
import 'package:gym_app/src/pages/body/widget/body_page.dart';

/// Stores pages as an enum
class Pages {
  static int dashboard = 0;
  static int workout = 1;
  static int diet = 2;
  static int body = 3;
}

/// This controller controls the state for current displayed page and stores all
/// pages that can be displayed
class LayoutController extends GetxController {
  RxBool isAppBarEnabled = true.obs;
  RxBool isNavBarEnabled = true.obs;

  RxInt currentIndex = Pages.workout.obs;

  late TitledWidget currentPage;

  // List of pages that can be navigated to
  final List<TitledWidget> pages = [
    DashboardPage(),
    WorkoutPage(),
    DietPage(),
    BodyPage(),
  ];

  @override
  onInit() {
    super.onInit();
    currentPage = pages[Pages.workout];
  }

  updateCurrentIndex(int newIndex) {
    // ignore dashboard and body for now (haven't developed yet)
    if (newIndex == Pages.dashboard || newIndex == Pages.body) {
      return;
    }

    currentIndex(newIndex);
    currentPage = pages[currentIndex.value];
  }
}
