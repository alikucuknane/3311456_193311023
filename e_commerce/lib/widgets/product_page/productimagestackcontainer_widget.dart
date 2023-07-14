// Main Lib
import 'package:flutter/material.dart';
// Other Lib
import 'package:e_commerce/shared/constants.dart';

class ProductImageStackContainerWidget extends StatelessWidget {
  final IconData icon;
  const ProductImageStackContainerWidget({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Constants.scaffoldPrimaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          color: Constants.textPrimaryColor,
        ),
      ),
    );
  }
}
