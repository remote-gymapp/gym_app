import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gym_app/src/models/titled_widget.dart';

class BodyPage extends GetView implements TitledWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  final String title = 'Body';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
