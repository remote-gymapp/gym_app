import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gym_app/src/models/titled_widget.dart';

class DashboardPage extends GetView implements TitledWidget {
  @override
  final Widget title = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.dashboard),
      SizedBox(width: 10),
      Text('Dashboard'),
    ],
  );

  DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          title,
        ],
      ),
    );
  }
}
