import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gym_app/src/models/titled_widget.dart';

class DashboardPage extends GetView implements TitledWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  final String title = 'Dashboard';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
