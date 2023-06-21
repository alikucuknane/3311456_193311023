// Main Lib
import 'package:flutter/material.dart';
// Other Lib
import 'package:e_commerce/shared/constants.dart';

class LoginPageorContainerWidget extends StatelessWidget {
  final double height;
  const LoginPageorContainerWidget({
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: height * 0.0025,
        color: Constants.textSecondaryColor,
      ),
    );
  }
}
