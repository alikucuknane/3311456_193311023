import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:dots_e_commerce/pages/home_page.dart';
import 'package:dots_e_commerce/pages/profile_page.dart';
import 'package:dots_e_commerce/shared/constants.dart';
import 'package:dots_e_commerce/shared/sharedlist.dart';
import 'package:flutter/material.dart';

class BottomNavBarPatternPage extends StatefulWidget {
  const BottomNavBarPatternPage({super.key});

  @override
  State<BottomNavBarPatternPage> createState() =>
      _BottomNavBarPatternPageState();
}

class _BottomNavBarPatternPageState extends State<BottomNavBarPatternPage> {
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: _bottomNavIndex == 0
            ? const HomePage()
            : _bottomNavIndex == 3
                ? const ProfilePage()
                : const Text("Other Page"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.keyboard_voice,
          color: Constants.whiteColor,
        ),
        onPressed: () => {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: height * Constants.generalHeight,
        child: AnimatedBottomNavigationBar(
          icons: SharedList.bottommBarItems,
          activeColor: Constants.primaryColor,
          inactiveColor: Constants.secondaryColor,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
        ),
      ),
    );
  }
}
