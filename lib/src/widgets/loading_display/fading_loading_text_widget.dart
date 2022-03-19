import 'package:flutter/material.dart';

class FadingLoadingText extends StatefulWidget {
  const FadingLoadingText({Key? key}) : super(key: key);

  @override
  State<FadingLoadingText> createState() => _FadingLoadingTextState();
}

class _FadingLoadingTextState extends State<FadingLoadingText>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
      lowerBound: 0.5,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationController,
      child: const Text(
        'Loading',
        style: TextStyle(
          // TODO: change this to TextPrimary when theme is defined
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }
}
