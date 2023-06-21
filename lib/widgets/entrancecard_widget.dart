import 'package:flutter/material.dart';

class EntanceCardWidget extends StatelessWidget {
  const EntanceCardWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.2,
      width: double.maxFinite,
      child: Card(
        child: Stack(
          children: [
            const Expanded(
              child: Placeholder(),
            ),
            Positioned(
              left: width * 0.04,
              bottom: height * 0.1 - 14,
              child: const Text(
                "Limeted\nCollection",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
