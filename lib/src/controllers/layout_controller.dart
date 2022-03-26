import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LayoutController extends GetxController {
  final List<TitledWidget> pages = [
    const TitledWidget(title: 'Dashboard'),
    const TitledWidget(title: 'Workout'),
    const TitledWidget(title: 'Diet'),
    const TitledWidget(title: 'Body'),
  ];

  RxBool isAppBarEnabled = true.obs;
  RxBool isNavBarEnabled = true.obs;

  RxInt currentIndex = 0.obs;

  late TitledWidget currentPage;

  RxString get appBarTitle {
    return currentPage.title.obs;
  }

  @override
  onInit() {
    super.onInit();

    currentPage = pages[0];
  }

  updateCurrentIndex(int newIndex) {
    currentIndex(newIndex);
    currentPage = pages[currentIndex.value];
  }
}

class TitledWidget extends StatelessWidget {
  final String title;

  const TitledWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(title),
      ),
    );
  }
}
