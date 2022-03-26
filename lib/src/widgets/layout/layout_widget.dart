import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gym_app/src/theme/app_theme.dart';
import 'package:gym_app/src/controllers/layout_controller.dart';

class Layout extends GetView<LayoutController> {
  @override
  final LayoutController controller = Get.put(LayoutController());

  Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          appBar: controller.isAppBarEnabled.value ? _buildAppBar() : null,
          body: Container(
            color: AppTheme.darkBg,
            child: Center(
              child: controller.currentPage,
            ),
          ),
          bottomNavigationBar:
              controller.isNavBarEnabled.value ? _buildBottomNavBar() : null,
        );
      },
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppTheme.sidenav,
      title: Text(controller.appBarTitle.value),
    );
  }

  BottomNavigationBar _buildBottomNavBar() {
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
          icon: Icon(Icons.dashboard_outlined),
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
