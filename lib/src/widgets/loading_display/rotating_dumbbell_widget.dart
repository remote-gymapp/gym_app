import 'package:flutter/material.dart';

/// An image of a dumbbell repeatedly rotating around its center point
class RotatingDumbbell extends StatefulWidget {
  const RotatingDumbbell({
    Key? key,
  }) : super(key: key);

  static final Image _dumbbellImage = Image.asset('dumbbell.png');

  @override
  State<RotatingDumbbell> createState() => _RotatingDumbbellState();
}

class _RotatingDumbbellState extends State<RotatingDumbbell>
    with SingleTickerProviderStateMixin {
  /// Controls the value of the animation i.e the angle as a double value
  /// between 0 and 1 where 1 is 360 degrees
  late final AnimationController _animationController;

  /// decides how the animation speeds up and slows down throughout its lifetime
  late final Animation<double> _animationCurve;

  @override
  void initState() {
    super.initState();
    _animationController = _initAnimationController();
    _animationCurve = _initCurvedAnimation();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  AnimationController _initAnimationController() {
    return AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
      lowerBound: 0,
      upperBound: 1,
    )..repeat();
  }

  CurvedAnimation _initCurvedAnimation() {
    return CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      child: RotatingDumbbell._dumbbellImage,
      alignment: Alignment.center,
      turns: _animationCurve,
    );
  }
}
