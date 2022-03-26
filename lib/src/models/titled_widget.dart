import 'package:flutter/material.dart';

abstract class TitledWidget extends StatelessWidget {
  final Widget? title = null;

  const TitledWidget({Key? key}) : super(key: key);
}
