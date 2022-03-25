import 'dart:async';

import 'package:flutter/material.dart';

import 'package:gym_app/src/theme/app_theme.dart';

class Layout extends StatefulWidget {
  final Widget child;
  final bool isAppBarEnabled;
  final bool isNavBarEnabled;

  String appBarTitle = 'Gym App';

  Layout({
    Key? key,
    required this.child,
    required this.isAppBarEnabled,
    required this.isNavBarEnabled,
  }) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 500), (_) {
      setState(() {
        widget.appBarTitle += "a";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.isAppBarEnabled ? _buildAppBar() : null,
      body: Container(
        color: AppTheme.darkBg,
        child: Center(child: widget.child),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppTheme.sidenav,
      title: Text(widget.appBarTitle),
    );
  }

  BottomNavigationBar _buildBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (tappedIndex) => {
        setState(() {
          _currentIndex = tappedIndex;
        })
      },
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: AppTheme.sidenav,
      selectedItemColor: AppTheme.primaryCoach,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          label: 'Dashboard',
          icon: Icon(Icons.dashboard),
        ),
        BottomNavigationBarItem(
          label: 'Workout',
          icon: Icon(Icons.fitness_center),
        ),
        BottomNavigationBarItem(
          label: 'Diet',
          icon: Icon(Icons.restaurant),
        ),
        BottomNavigationBarItem(
          label: 'Body',
          icon: Icon(Icons.straighten),
        ),
      ],
    );
  }
}
