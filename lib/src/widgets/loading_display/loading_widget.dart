import 'package:flutter/material.dart';

import 'package:gym_app/src/widgets/loading_display/rotating_dumbbell_widget.dart';
import 'package:gym_app/src/widgets/loading_display/fading_loading_text_widget.dart';

class LoadingDisplay extends StatelessWidget {
  const LoadingDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color(0Xff0C1727),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                RotatingDumbbell(),
                const SizedBox(height: 30),
                FadingLoadingText(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
