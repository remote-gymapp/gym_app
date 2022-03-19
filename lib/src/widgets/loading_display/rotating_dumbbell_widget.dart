import 'package:flutter/material.dart';

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
  late final AnimationController _animationController;

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
