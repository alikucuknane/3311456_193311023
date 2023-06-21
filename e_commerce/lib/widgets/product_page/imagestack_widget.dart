// Main Lib
import 'package:flutter/material.dart';
// Other Lib
import 'package:e_commerce/widgets/product_page/productimagestackcontainer_widget.dart';

class ProductImageStackWidget extends StatelessWidget {
  final double height;
  final double width;
  const ProductImageStackWidget({
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: height * 0.5,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                height * 0.02,
              ),
            ),
            child: const Placeholder(),
          ),
        ),
        for (int i = 0; i < 2; i++)
          i == 0
              ? Positioned(
                  left: width * 0.01,
                  top: height * 0.05,
                  child: const ProductImageStackContainerWidget(
                    icon: Icons.share_rounded,
                  ),
                )
              : Positioned(
                  right: width * 0.01,
                  top: height * 0.05,
                  child: const ProductImageStackContainerWidget(
                    icon: Icons.favorite,
                  )),
      ],
    );
  }
}
