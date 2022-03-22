import 'package:flutter/material.dart';

import 'package:gym_app/src/widgets/loading_display/rotating_dumbbell_widget.dart';
import 'package:gym_app/src/widgets/loading_display/fading_loading_text_widget.dart';

/// Basic loading screen with a spinning dumbbell and a fading-in-and-out loading text
///
/// This widget will expand to fill its parent. It can be used to fill an entire page or just to fill a single widget.
///
/// Example Usage:
///
/// ```dart
/// // filling entire display
/// Scaffold(
///   body: LoadingDisplay(),
/// );
///
/// // filling only given widget
/// Flex(
///   children: [
///     Flexible(
///       flex: 1,
///       child: Text('Welcome to my app'),
///     ),
///     // LoadingDisplay only occupies one widget's worth of area
///     Flexible(
///       flex: 1,
///       child: isLoading
///               ? LoadingDisplay()
///               : SomeOtherWidget(),
///     ),
///     Flexible(
///       flex: 1,
///       child: Text('Explore'),
///     ),
///   ],
/// );
/// ```
class LoadingDisplay extends StatelessWidget {
  const LoadingDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // TODO: change to relevant theme color once theme is implemented
        color: const Color(0Xff0C1727),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: const [
                RotatingDumbbell(),
                SizedBox(height: 30),
                FadingLoadingText(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
