import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gym_app/src/models/titled_widget.dart';

class WorkoutPage extends GetView implements TitledWidget {
  const WorkoutPage({Key? key}) : super(key: key);

  @override
  final String title = 'Workout';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
