import 'package:flutter/material.dart';
import 'dart:math' as math;

class FABContact extends StatelessWidget {
  const FABContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Transform.rotate(
        angle: 180 * math.pi / 180,
        child: const IconButton(
          icon: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: null,
        ),
      ),
      shape: BeveledRectangleBorder(
        // TODO Shape
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
    );
  }
}
