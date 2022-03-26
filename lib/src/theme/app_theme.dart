import 'package:flutter/material.dart';

class AppTheme {
  static Color primaryText = Colors.white;

  static Color primaryMember = const Color(0xff3772ff);
  static Color primaryCoach = const Color(0xffceff1a);
  static Color sidenav = const Color(0xff10101c);
  static Color darkBg = const Color(0xff0c1727);
  static Color lightBg = const Color(0xff1c2939);

  static ThemeData themeData = ThemeData(
    iconTheme: IconThemeData(color: Colors.blue, opacity: 1),
    primaryTextTheme: Typography().white,
    hintColor: primaryText,
    textTheme: Typography().white,
  );
}
