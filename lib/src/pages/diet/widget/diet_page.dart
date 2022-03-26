import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gym_app/src/models/titled_widget.dart';

class DietPage extends GetView implements TitledWidget {
  const DietPage({Key? key}) : super(key: key);

  @override
  final String title = 'Diet';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
