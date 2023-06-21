import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../shared/sharedlist.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatefulWidget {
  final double height, width;
  int bottomNavIndex;
  BottomNavBar({
    required this.height,
    required this.width,
    required this.bottomNavIndex,
    super.key,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height * 0.08,
      child: AnimatedBottomNavigationBar(
        icons: SharedList.iconList,
        activeIndex: widget.bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: (index) => setState(() => widget.bottomNavIndex = index),
        
      ),
    );
  }
}
