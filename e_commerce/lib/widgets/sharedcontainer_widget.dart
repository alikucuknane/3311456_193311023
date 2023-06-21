import 'package:e_commerce/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SharedContainerWidget extends StatelessWidget {
  final double height;
  final IconData icon;
  final Color color;
  const SharedContainerWidget({
    required this.height,
    required this.icon,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.175,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(0.3),
      ),
      child: Center(
        child: Container(
          height: height * 0.125,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Center(
            child: FaIcon(
              icon,
              color: Constants.scaffoldPrimaryColor,
              size: height * 0.08,
            ),
          ),
        ),
      ),
    );
  }
}
