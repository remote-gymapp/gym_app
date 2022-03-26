import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gym_app/src/theme/app_theme.dart';
import 'package:gym_app/src/controllers/layout_controller.dart';
import 'package:gym_app/src/widgets/layout/custom_drawer.dart';

/// Main layout component that composes an app bar, a bottom navigation bar, and
/// a body that changes according to the chosen navigation from the bottom
/// navigation bar.
class Layout extends GetView<LayoutController> {
  @override
  final LayoutController controller = Get.put(LayoutController());

  Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: controller.isAppBarEnabled.value ? _buildAppBar() : null,
        body: Container(
          color: AppTheme.darkBg,
          child: Center(
            child: controller.currentPage,
          ),
        ),
        bottomNavigationBar: controller.isNavBarEnabled.value
            ? _buildBottomNavigationBar()
            : null,
        drawer: CustomDrawer(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppTheme.sidenav,
      title: Center(
        child: controller.currentPage.title,
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: controller.currentIndex.value,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: AppTheme.sidenav,
      selectedItemColor: AppTheme.primaryCoach,
      unselectedItemColor: Colors.grey,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      onTap: (tappedIndex) {
        controller.updateCurrentIndex(tappedIndex);
      },
      items: [
        BottomNavigationBarItem(
          label: 'Dashboard',
          icon: Icon(Icons.dashboard),
        ),
        BottomNavigationBarItem(
          label: 'Workout',
          icon: Icon(Icons.fitness_center),
        ),
        BottomNavigationBarItem(
          label: 'Diet',
          icon: Icon(Icons.restaurant),
        ),
        BottomNavigationBarItem(
          label: 'Body',
          icon: Icon(Icons.straighten),
        ),
      ],
    );
  }
}
