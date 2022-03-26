import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gym_app/src/models/titled_widget.dart';

class DietPage extends GetView implements TitledWidget {
  @override
  final Widget title = Row(
    children: [
      Icon(Icons.restaurant),
      SizedBox(width: 10),
      Text('Diet and Nutrition'),
    ],
  );

  DietPage({Key? key}) : super(key: key);

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
